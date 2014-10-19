<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 10
nchnls = 1
0dbfs  = 1

instr 101
  a1 oscil 0.5, 440, 1
  out a1
endin

instr 102
  kidx line 0, 10, 20
  kmod line 1, 10, 2.5
  kfrq line 80, 10, 30

  a1 foscil 1, kfrq, 1, kmod, kidx, 1 ;simple 2 operator fm opcode
  out a1
endin

instr 103
  a1 buzz 0.5, 440, 10, 1 ;variable pulse train
  out a1
endin

instr   104
  a1 pluck 0.5, 440, 440, 2, 1 ;karplus-strong plucked string
  out a1
endin

instr 105
  a1 grain 0.5, 440, 100, 0.2, 10, .05, 1, 3, 1 ;asynchronous granular synthesis
  out a1
endin

instr 106
  a1 loscil 0.5, 440, 4 ;sample-based looping oscillator
  out a1
endin

</CsInstruments>

<CsScore>
; Function 1 uses the GEN10 subroutine to compute a sine wave
; Function 2 uses the GEN10 subroutine to compute the first sixteen partials of a sawtooth wave
; Function 3 uses the GEN20 subroutine to compute a Hanning window for use as a grain envelope
; Function 4 uses the GEN01 subroutine to read in an AIF audio file
f 1 0 4096 10 1
f 2 0 4096 10 1 .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062
f 3 0 4097 20 2 1
f 4 0 0 1 "hi.wav" 0 4 0

;inst start duration
i 102 0 10
</CsScore>

</CsoundSynthesizer>

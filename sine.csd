<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 16
nchnls = 1
0dbfs  = 1

; 440hz sine wave
instr 101
  a1 oscil 0.2, p4
     out a1
endin

</CsInstruments>

<CsScore>
i 101 0 10 40
i 101 4 11 41
i 101 6 13 50
i 101 4 6  39
i 101 4 6  38
</CsScore>

</CsoundSynthesizer>



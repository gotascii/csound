<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 16
nchnls = 1
0dbfs  = 1

instr 1
asig loscil 1, 0.9, 1, 1, 2
     outs asig
endin

instr 2
asig loscil 1, 1, 1, 1, 1
     outs asig
endin

instr 3
asig loscil 1, 0.5, 1, 1, 2, 2000, 4000
     outs asig
endin

</CsInstruments>

<CsScore>
f 1 0 0 1 "hi.wav" 0 0 0
i 1 0 4
i 3 0 4
</CsScore>

</CsoundSynthesizer>

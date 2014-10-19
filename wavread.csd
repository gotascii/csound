<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
;Example by Alex Hofmann
instr 1
aSin      oscils    0dbfs/4, 440, 0
          out       aSin
endin

instr 2
aSource    buzz       0.8, 200, 10, 1
aFiltered  moogladder aSource, 400, 0.8
           out        aFiltered
endin
</CsInstruments>
<CsScore>
i 1 0 1
i 2 1 1
i 1 2 1
</CsScore>
</CsoundSynthesizer>

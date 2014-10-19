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
  ; amp from db
  iamp = ampdb(-0.01)
  print iamp

  ; db from amp
  idb = dbamp(0.999)
  print idb
endin

</CsInstruments>

<CsScore>
i 1 0 1
</CsScore>

</CsoundSynthesizer>


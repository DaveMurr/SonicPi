loop do
  sample "C:/Users/david.murray/Downloads/217 (1).wav", amp: 100
  sample :drum_snare_hard, amp: 100
  sleep 0.2
  sample :drum_snare_hard, amp: 100
  sleep 0.2
  sample :drum_snare_hard, amp: 100
  sleep 0.4
  sample :drum_snare_hard, amp: 50
  sleep 0.4
  #this is the flare noise
  sample :elec_filt_snare, amp: 50, release: 2
  sleep 0.2
  sample :elec_filt_snare, amp: 50, release: 2
  sleep 0.2
  sample :elec_filt_snare, amp: 50, release: 2
  sleep 0.2
  use_synth :pluck
  sleep 0.1
  use_synth :pluck
  sample :bass_trance_c, amp: 50
  sleep 0.2
  sample :bass_trance_c, amp: 40
  sleep 0.2
  play [85, 40, 30, 20, 100][rrand(0,4)]
  sample :misc_cineboom, attack: 0.5, release: 0.3
  sleep 0.2
  sample :misc_cineboom, attack: 0.5, release: 0.3
  with_fx :pitch_shift do
    play 60, amp: 60, sustain: 2
  end
end
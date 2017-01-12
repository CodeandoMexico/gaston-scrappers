module Endpoints
  PAGES=[
  ]
  STATES=["Aguascalientes","Baja_California","Baja_Californa_Sur","Campeche","Chiapas","Chihuahua","Ciudad_de_México","Coahuila","Colima","Durango",
  "Estado_de_México","Guanajuato","Guerrero","Hidalgo","Jalisco","Michoacán","Morelos","Nayarit","Nuevo_León","Oaxaca","Puebla","Querétaro",
  "Quintana_Roo","San_Luis_Potosí","Sinaloa","Sonora","Tabasco","Tamaulipas","Tlaxcala","Veracruz","Yucatán","Zacatecas"]
  STATES_LATLNG=[{latne:23.562277298361725,lonne:-98.53973664531247,latsw:20.1882843430345,lonsw:-106.04339875468747},
  {latne:32.38894667639648,lonne:-111.53192744531248,latsw:29.266930762666288,lonsw:-119.03558955468748},
  {latne:27.66650100175619,lonne:-107.91424144531243,latsw:24.399633758481333,lonsw:-115.41790355468743},
  {latne:20.642033186165406,lonne:-86.50997574531254,latsw:17.202715989321593,lonsw:-94.01363785468754},
  {latne:18.48975512076114,lonne:-89.3774042453125,latsw:15.008185193432755,lonsw:-96.8810663546875},
  {latne:30.21660020296157,lonne:-102.31726934531252,latsw:27.02513009201757,lonsw:-109.82093145468752},
  {latne:21.13799396665761,lonne:-95.38137694531247,latsw:17.709124806710232,lonsw:-102.88503905468747},
  {latne:28.666048014389613,lonne:-97.95499834531245,latsw:25.42793638852626,lonsw:-105.45866045468745},
  {latne:20.831020887749034,lonne:-100.25540374531249,latsw:17.39565363240527,lonsw:-107.75906585468749},
  {latne:25.677492683425847,lonne:-100.90134484531256,latsw:22.356496397268387,lonsw:-108.40500695468756},
  {latne:21.2015552056454,lonne:-95.97143624531253,latsw:17.77404423318285,lonsw:-103.47509835468753},
  {latne:22.605601254797637,lonne:-97.40990454531249,latsw:19.20920062856547,lonsw:-104.91356665468749},
  {latne:19.16537110929309,lonne:-95.79326634531247,latsw:15.696522682080808,lonsw:-103.29692845468747},
  {latne:21.789166635753915,lonne:-95.01055634531247,latsw:18.37441794716552,lonsw:-102.51421845468747},
  {latne:22.351115650383285,lonne:-99.59760654531249,latsw:18.948919165421326,lonsw:-107.10126865468749},
  {latne:21.27043559987965,lonne:-97.95499834531256,latsw:17.844401393308534,lonsw:-105.45866045468756},
  {latne:20.394767585778414,lonne:-95.34951874531248,latsw:16.950340713158432,lonsw:-102.85318085468748},
  {latne:23.43003211957002,lonne:-101.09363084531253,latsw:20.05288347501437,lonsw:-108.59729295468753},
  {latne:27.220616457744367,lonne:-96.24436364531255,latsw:23.941255762045774,lonsw:-103.74802575468755},
  {latne:18.784187231633048,lonne:-92.96139934531254,latsw:15.308100192158664,lonsw:-100.46506145468754},
  {latne:20.75091838552446,lonne:-94.45437024531248,latsw:17.31387223436927,lonsw:-101.95803235468748},
  {latne:22.281212556574726,lonne:-96.63805654531251,latsw:18.87743619463824,lonsw:-104.14171865468751},
  {latne:20.88985452801552,lonne:-84.72730654531256,latsw:17.455724801257343,lonsw:-92.23096865468756},
  {latne:23.830262076104745,lonne:-97.2336317453125,latsw:20.4627209985095,lonsw:-104.7372938546875},
  {latne:26.806397691997315,lonne:-103.7276862453125,latsw:23.515616272817862,lonsw:-111.2313483546875},
  {latne:30.870449854712785,lonne:-106.57905034531251,latsw:27.69938327062883,lonsw:-114.08271245468751},
  {latne:19.563070383610587,lonne:-88.8670962453125,latsw:16.101942640918534,lonsw:-96.3707583546875},
  {latne:25.913528893550296,lonne:-95.0844444453125,latsw:22.598739530834,lonsw:-102.5881065546875},
  {latne:21.024789293707773,lonne:-94.48566434531256,latsw:17.593511948226606,lonsw:-101.98932645468756},
  {latne:20.88197435839577,lonne:-92.38239304531248,latsw:17.4476786604455,lonsw:-99.88605515468748},
  {latne:22.40087315210158,lonne:-85.34250664531248,latsw:18.999804426288794,lonsw:-92.84616875468748},
  {latne:24.436890077164225,lonne:-98.8314115453125,latsw:21.084235889921697,lonsw:-106.3350736546875}]
  def filter_page_station product, service, state
    point=STATES.index "#{state}"
    begin
      "http://pronosticodemanda.pemex.com/WS_GP_2/Pemex.Servicios.svc/web/get_Est_Reg?latne=#{STATES_LATLNG[point][:latne]}&lonne=#{STATES_LATLNG[point][:lonne]}&latsw=#{STATES_LATLNG[point][:latsw]}&lonsw=#{STATES_LATLNG[point][:lonsw]}&z=8&category=3&prod=#{product}"
    rescue NoMethodError
      puts "El estado #{state} que arrojo error"
    end
  end
end

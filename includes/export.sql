SELECT
  patient.id AS pid,
  patient,
  CASE WHEN patient.gender='Male' THEN 'Herr' ELSE 'Frau' END || ' ' || COALESCE(patient.last_name, '') || ' ' || COALESCE(patient.first_name, '') AS patient_name,
  patient.four_letter_code,
    
  ((cast(response AS json))->>'Fallnummer') as fnr,
  ((cast(response AS json))->>'Institution') as institution,
  ((cast(response AS json))->>'PID') as pid,

  ((cast(response AS json))->>'QNAC070[VNAC070a]') as vnac070a,
  ((cast(response AS json))->>'QNAC070[VNAC070b]') as vnac070b,
  ((cast(response AS json))->>'QNAC070[VNAC070c]') as vnac070c,
  ((cast(response AS json))->>'QNAC070[VNAC070d]') as vnac070d,
  ((cast(response AS json))->>'QNAC070[VNAC070e]') as vnac070e,
  ((cast(response AS json))->>'QNAC070[VNAC070f]') as vnac070f,
  ((cast(response AS json))->>'QNAC070[VNAC070g]') as vnac070g,
  ((cast(response AS json))->>'QNAC070[VNAC070h]') as vnac070h,
  ((cast(response AS json))->>'QNAC070[VNAC070x]') as vnac070x,
  ((cast(response AS json))->>'QNAC070[VNAC070y]') as vnac070y,
  ((cast(response AS json))->>'QNAD0101[VNAD010a]') as vnad010a,
  ((cast(response AS json))->>'QNAD0102[VNAD010ba]') as vnad010ba,
  ((cast(response AS json))->>'QNAD0102[VNAD010bb]') as vnad010bb,
  ((cast(response AS json))->>'QNAD0102[VNAD010bc]') as vnad010bc,
((cast(response AS json))->>'QNAD0102[VNAD010bd]') as vnad010bd,
((cast(response AS json))->>'QNAD0102[VNAD010be]') as vnad010be,
((cast(response AS json))->>'QNAD0103[VNAD010ca]') as vnad010ca,
((cast(response AS json))->>'NAD0103[VNAD010cb]') as vnad010cb,
((cast(response AS json))->>'QNAD0103[VNAD010cc]') as vnad010cc,
((cast(response AS json))->>'QNAD0104[VNAD010da]') as vnad010da,
((cast(response AS json))->>'QNAD0104[VNAD010db]') as vnad010db,
((cast(response AS json))->>'QNAD0104[VNAD010dc]') as vnad010dc,
((cast(response AS json))->>'QNAD0104[VNAD010dd]') as vnad010dd,
((cast(response AS json))->>'QNAD0104[VNAD010de]') as vnad010de,
((cast(response AS json))->>'QNAD0105[VNAD010ea]') as vnad010ea,
((cast(response AS json))->>'QNAD0105[VNAD010eb]') as vnad010eb,
((cast(response AS json))->>'QNAD0105[VNAD010ec]') as vnad010ec,
((cast(response AS json))->>'QNAD0105[VNAD010ed]') as vnad010ed,
((cast(response AS json))->>'QNAD0106[VNAD010fa]') as vnad010f,
((cast(response AS json))->>'QNAD0106[VNAD010fb]') as vnad010fb,
((cast(response AS json))->>'QNAD0106[VNAD010fc]') as vnad010fc,
((cast(response AS json))->>'QNAD0107[VNAD010g]') as vnad010g,
((cast(response AS json))->>'QNAD0107[VNAD010h]') as vnad010h,
((cast(response AS json))->>'QNAD0107[VNAD010i]') as vnad010i,
((cast(response AS json))->>'QNAD0107[VNAD010j]') as vnad010j,
((cast(response AS json))->>'QNAD0108[VNAD010ka]') as vnad010ka,
((cast(response AS json))->>'QNAD0108[VNAD010kb]') as vnad010kb,
((cast(response AS json))->>'QNAD0108[VNAD010kc]') as vnad010kc,
((cast(response AS json))->>'QNAD0108[VNAD010kd]') as vnad010kd,
((cast(response AS json))->>'QYAP010[VYAP010a]') as vyap010a,
((cast(response AS json))->>'QYAP010[VYAP010b]') as vyap010b,
((cast(response AS json))->>'QYAP010[VYAP010c]') as vyap010c,
((cast(response AS json))->>'QYAP010[VYAP010d]') as vyap010d,
((cast(response AS json))->>'QYAP010[VYAP010e]') as vyap010e,
((cast(response AS json))->>'QYAP010[VYAP010f]') as vyap010f,
((cast(response AS json))->>'QYAP010[VYAP010g]') as vyap010g,
((cast(response AS json))->>'QYAP010[VYAP010h]') as vyap010h,
((cast(response AS json))->>'QYAP010[VYAP010i]') as vyap010i,
((cast(response AS json))->>'QYAP010[VYAP010j]') as vyap010j,
((cast(response AS json))->>'QYAP010[VYAP010k]') as vyap010k,
((cast(response AS json))->>'QYAP010[VYAP010l]') as vyap010l,
((cast(response AS json))->>'QYAP010[VYAP010x]') as vyap010x,
((cast(response AS json))->>'QYAP010[VYAP010y]') as vyap010y,
((cast(response AS json))->>'QYAP080[VYAP080a]') as vyap080a,
((cast(response AS json))->>'QYAP080[VYAP080b]') as vyap080b,
((cast(response AS json))->>'QYAP080[VYAP080c]') as vyap080c,
((cast(response AS json))->>'QYAP090[VYAP090a]') as vyap090a,
((cast(response AS json))->>'QYAP090[VYAP090b]') as vyap090b,
((cast(response AS json))->>'QYAP090[VYAP090c]') as vyap090c,
((cast(response AS json))->>'QYAR010[VYAR010a]') as vyar010a,
((cast(response AS json))->>'QYAR010[VYAR010b]') as vyar010b,
((cast(response AS json))->>'QYAR010[VYAR010c]') as vyar010c,
((cast(response AS json))->>'QYAR010[VYAR010d]') as vyar010d,
((cast(response AS json))->>'QYAR010[VYAR010e]') as vyar010e,
((cast(response AS json))->>'QYAR010[VYAR010f]') as vyar010f,
((cast(response AS json))->>'QYAR010[VYAR010g]') as vyar010g,
((cast(response AS json))->>'QYAR010[VYAR010h]') as vyar010h,
((cast(response AS json))->>'QYAR010[VYAR010i]') as vyar010i,
((cast(response AS json))->>'QYAR010[VYAR010x]') as vyar010x,
((cast(response AS json))->>'QYAR020[VYAR020a]') as vyar020a,
((cast(response AS json))->>'QYAR020[VYAR020b]') as vyar020b,
((cast(response AS json))->>'QYAR020[VYAR020c]') as vyar020c,
((cast(response AS json))->>'QYAR020[VYAR020d]') as vyar020d,
((cast(response AS json))->>'QYAR020[VYAR020e]') as vyar020e,
((cast(response AS json))->>'QYAR020[VYAR020f]') as vyar020f,
((cast(response AS json))->>'QYAR020[VYAR020g]') as vyar020g,
((cast(response AS json))->>'QYAR020[VYAR020h]') as vyar020h,
((cast(response AS json))->>'QYAR020[VYAR020i]') as vyar020i,
((cast(response AS json))->>'QYAR020[VYAR020j]') as vyar020j,
((cast(response AS json))->>'QYAR020[VYAR020x]') as vyar020x,
((cast(response AS json))->>'QYAR030[VYAR030a]') as vyar030a,
((cast(response AS json))->>'QYAR030[VYAR030b]') as vyar030b,
((cast(response AS json))->>'QYAR030[VYAR030c]') as vyar030c,
((cast(response AS json))->>'QYAR030[VYAR030d]') as vyar030d,
((cast(response AS json))->>'QYAR030[VYAR030e]') as vyar030e,
((cast(response AS json))->>'QYAR030[VYAR030f]') as vyar030f,
((cast(response AS json))->>'QYAR030[VYAR030g]') as vyar030g,
((cast(response AS json))->>'QYAR030[VYAR030h]') as vyar030h,
((cast(response AS json))->>'QYAR030[VYAR030x]') as vyar030x,
((cast(response AS json))->>'QYAZ020[VYAZ020a]') as vyaz020a,
((cast(response AS json))->>'QYAZ020[VYAZ020b]') as vyaz020b,
((cast(response AS json))->>'QYAZ020[VYAZ020c]') as vyaz020c,
((cast(response AS json))->>'QYAZ020[VYAZ020d]') as vyaz020d,
((cast(response AS json))->>'QYAZ020[VYAZ020e]') as vyaz020e,
((cast(response AS json))->>'QYAZ020[VYAZ020f]') as vyaz020f,
((cast(response AS json))->>'QYAZ020[VYAZ020g]') as vyaz020g,
((cast(response AS json))->>'QYAZ020[VYAZ020h]') as vyaz020h,
((cast(response AS json))->>'QYAZ020[VYAZ020i]') as vyaz020i,
((cast(response AS json))->>'QYAZ020[VYAZ020j]') as vyaz020j,
((cast(response AS json))->>'QYAZ020[VYAZ020k]') as vyaz020k,
((cast(response AS json))->>'QYAZ020[VYAZ020l]') as vyaz020l,
((cast(response AS json))->>'QYAZ020[VYAZ020m]') as vyaz020m,
((cast(response AS json))->>'QYAZ020[VYAZ020n]') as vyaz020n,
((cast(response AS json))->>'QYAZ020[VYAZ020x]') as vyaz020x,
((cast(response AS json))->>'QZAJ015[VZAJ015a]') as vzaj015a,
((cast(response AS json))->>'QZAJ015[VZAJ015b]') as vzaj015b,
((cast(response AS json))->>'QZAJ015[VZAJ015c]') as vzaj015c,
((cast(response AS json))->>'QZAJ015[VZAJ015d]') as vzaj015d,
((cast(response AS json))->>'QZAJ015[VZAJ015e]') as vzaj015e,
((cast(response AS json))->>'QZAJ015[VZAJ015f]') as vzaj015f,
((cast(response AS json))->>'QZAJ015[VZAJ015g]') as vzaj015g,
((cast(response AS json))->>'QZAJ015[VZAJ015h]') as vzaj015h,
((cast(response AS json))->>'QZAJ015[VZAJ015i]') as vzaj015i,
((cast(response AS json))->>'QZAJ015[VZAJ015j]') as vzaj015j,
((cast(response AS json))->>'QZAJ015[VZAJ015x]') as vzaj015x,
((cast(response AS json))->>'QZAU050[VZAU050a]') as vzau050a,
((cast(response AS json))->>'QZAU050[VZAU050b]') as vzau050b,
((cast(response AS json))->>'QZAU050[VZAU050c]') as vzau050c,
((cast(response AS json))->>'QZAU050[VZAU050d]') as vzau050d,
((cast(response AS json))->>'QZAU050[VZAU050e]') as vzau050e,
((cast(response AS json))->>'QZAU050[VZAU050f]') as vzau050f,
((cast(response AS json))->>'QZAU050[VZAU050g]') as vzau050g,
((cast(response AS json))->>'QZAU050[VZAU050x]') as vzau050x,
((cast(response AS json))->>'QZAU050[VZAU050y]') as vzau050y,
((cast(response AS json))->>'VMAB001') as VMAB001,
((cast(response AS json))->>'VMAB005') as VMAB005,
((cast(response AS json))->>'VMAB010') as VMAB010,
((cast(response AS json))->>'VMAB020') as VMAB020,
((cast(response AS json))->>'VMAB040') as VMAB040,
((cast(response AS json))->>'VMAB042') as VMAB042,
((cast(response AS json))->>'VMAB044') as VMAB044,
((cast(response AS json))->>'VMAB045') as VMAB045,
((cast(response AS json))->>'VMAB046') as VMAB046,
((cast(response AS json))->>'VMAB050') as VMAB050,
((cast(response AS json))->>'VMAB055') as VMAB055,
((cast(response AS json))->>'VMAB060') as VMAB060,
((cast(response AS json))->>'VMAC001') as VMAC001,
((cast(response AS json))->>'VMAC005') as VMAC005,
((cast(response AS json))->>'VMAC010a') as VMAC010a,
((cast(response AS json))->>'VMAC020') as VMAC020,
((cast(response AS json))->>'VMAC031') as VMAC031,
((cast(response AS json))->>'VMAC051') as VMAC051,
((cast(response AS json))->>'VMAC061') as VMAC061,
((cast(response AS json))->>'VNAB041') as VNAB041,
((cast(response AS json))->>'VNAC030') as VNAC030,
((cast(response AS json))->>'VNAC040') as VNAC040,
((cast(response AS json))->>'VNAC050') as VNAC050,
((cast(response AS json))->>'VNAC060') as VNAC060,
((cast(response AS json))->>'VNAD010x') as VNAD010x,
((cast(response AS json))->>'VNAD010y') as VNAD010y,
((cast(response AS json))->>'VNAD011be') as VNAD011be,
((cast(response AS json))->>'VNAD011cc') as VNAD011cc,
((cast(response AS json))->>'VNAD011de') as VNAD011de,
((cast(response AS json))->>'VNAD011ed') as VNAD011ed,
((cast(response AS json))->>'VNAD011fc') as VNAD011fc,
((cast(response AS json))->>'VNAD011j') as VNAD011j,
((cast(response AS json))->>'VNAD011kd') as VNAD011kd,
((cast(response AS json))->>'VNAD015a') as VNAD015a,
((cast(response AS json))->>'VNAD015ba') as VNAD015ba,
((cast(response AS json))->>'VNAD015bb') as VNAD015bb,
((cast(response AS json))->>'VNAD015bc') as VNAD015bc,
((cast(response AS json))->>'VNAD015bd') as VNAD015bd,
((cast(response AS json))->>'VNAD015be') as VNAD015be,
((cast(response AS json))->>'VNAD015ca') as VNAD015ca,
((cast(response AS json))->>'VNAD015cb') as VNAD015cb,
((cast(response AS json))->>'VNAD015cc') as VNAD015cc,
((cast(response AS json))->>'VNAD015da') as VNAD015da,
((cast(response AS json))->>'VNAD015db') as VNAD015db,
((cast(response AS json))->>'VNAD015dc') as VNAD015dc,
((cast(response AS json))->>'VNAD015dd') as VNAD015dd,
((cast(response AS json))->>'VNAD015de') as VNAD015de,
((cast(response AS json))->>'VNAD015ea') as VNAD015ea,
((cast(response AS json))->>'VNAD015eb') as VNAD015eb,
((cast(response AS json))->>'VNAD015ec') as VNAD015ec,
((cast(response AS json))->>'VNAD015ed') as VNAD015ed,
((cast(response AS json))->>'VNAD015fa') as VNAD015fa,
((cast(response AS json))->>'VNAD015fb') as VNAD015fb,
((cast(response AS json))->>'VNAD015fc') as VNAD015fc,
((cast(response AS json))->>'VNAD015g') as VNAD015g,
((cast(response AS json))->>'VNAD015h') as VNAD015h,
((cast(response AS json))->>'VNAD015i') as VNAD015i,
((cast(response AS json))->>'VNAD015j') as VNAD015j,
((cast(response AS json))->>'VNAD015ka') as VNAD015ka,
((cast(response AS json))->>'VNAD015kb') as VNAD015kb,
((cast(response AS json))->>'VNAD015kc') as VNAD015kc,
((cast(response AS json))->>'VNAD015kd') as VNAD015kd,
((cast(response AS json))->>'VYAF030') as VYAF030,
((cast(response AS json))->>'VYAN010') as VYAN010,
((cast(response AS json))->>'VYAP080x') as VYAP080x,
((cast(response AS json))->>'VYAP090x') as VYAP090x,
((cast(response AS json))->>'VYAR009') as VYAR009,
((cast(response AS json))->>'VYAR019') as VYAR019,
((cast(response AS json))->>'VYAR029') as VYAR029,
((cast(response AS json))->>'VYAS015') as VYAS015,
((cast(response AS json))->>'VYAZ010') as VYAZ010,
((cast(response AS json))->>'VYAZ021j') as VYAZ021j,
((cast(response AS json))->>'VYAZ021n') as VYAZ021n,
((cast(response AS json))->>'VZAF010') as VZAF010,
((cast(response AS json))->>'VZAF011') as VZAF011,
((cast(response AS json))->>'VZAJ010') as VZAJ010,
((cast(response AS json))->>'VZAJ016') as VZAJ016,
((cast(response AS json))->>'VZAO010') as VZAO010,
((cast(response AS json))->>'VZAO011') as VZAO011,
((cast(response AS json))->>'VZAP011') as VZAP011,
((cast(response AS json))->>'VZAP020') as VZAP020,
((cast(response AS json))->>'VZAP021') as VZAP021,
((cast(response AS json))->>'VZAP030') as VZAP030,
((cast(response AS json))->>'VZAP031') as VZAP031,
((cast(response AS json))->>'VZAP040') as VZAP040,
((cast(response AS json))->>'VZAP041') as VZAP041,
((cast(response AS json))->>'VZAR011') as VZAR011,
((cast(response AS json))->>'VZAR021') as VZAR021,
((cast(response AS json))->>'VZAR031') as VZAR031,
((cast(response AS json))->>'VZAS010') as VZAS010,
((cast(response AS json))->>'VZAS020') as VZAS020,
((cast(response AS json))->>'VZAT010') as VZAT010,
((cast(response AS json))->>'VZAT020') as VZAT020,
((cast(response AS json))->>'VZAT030') as VZAT030,
((cast(response AS json))->>'VZAT040') as VZAT040,
((cast(response AS json))->>'VZAT050') as VZAT050,
((cast(response AS json))->>'VZAT060') as VZAT060,
((cast(response AS json))->>'VZAT070') as VZAT070,
((cast(response AS json))->>'VZAT100') as VZAT100,
((cast(response AS json))->>'VZAU010') as VZAU010,
((cast(response AS json))->>'VZAU011') as VZAU011,
((cast(response AS json))->>'VZAU020') as VZAU020,
((cast(response AS json))->>'VZAU021') as VZAU021,
((cast(response AS json))->>'VZAU030') as VZAU030,
((cast(response AS json))->>'VZAU031') as VZAU031,
((cast(response AS json))->>'VZAU051') as VZAU051,
((cast(response AS json))->>'VZAX005') as VZAX005,
((cast(response AS json))->>'cgiZA') as cgiZA,
  TO_DATE(((cast(response AS json))->>'datestamp'), 'YYYY-MM-DD HH24:MI:SS')  as datestamp_date,
  SUBSTRING(((cast(response AS json))->>'datestamp'),12,5) AS datestamp_time,
  SUBSTRING(((cast(response AS json))->>'datestamp'),1,4)::integer AS datestamp_year,
  EXTRACT(WEEK FROM TO_DATE(((cast(response AS json))->>'datestamp'), 'YYYY-MM-DD HH24:MI:SS')) AS datestamp_week,
  ((cast(response AS json))->>'id') as id,
  ((cast(response AS json))->>'lastpage') as lastpage,
  ((cast(response AS json))->>'optinomixHASH') as optinomixhash,

  random_hash,
  scheduled,
  filled,
  module,
  survey_response.id AS survey_response_id  

FROM survey_response 
INNER JOIN patient ON(survey_response.patient = patient.id) 

WHERE module = 'ch.suedhang.apps.actinfo_aus';

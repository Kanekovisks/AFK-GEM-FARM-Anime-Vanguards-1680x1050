﻿#SingleInstance, force

#Include FindText.ahk


F8::ExitApp
f9::Reload


~z::



num3:="|<>**50$57.73001X0600sA00AM0k0C1UDvXs671k67bwDUlwA0lk60A7z3U3M0k1UD0MMP060A0M331kMwDU30kQC7zVs7w600krA81zwU067xV0ABY00ERwD1Vs1z207UMA00MM80Q30k021VU6kM704"

if (ok:=FindText(X, Y, 871-150000, 429-150000, 871+150000, 429+150000, 0.1, 0.8, num3))
{
  MouseMove, X, Y, 4
}
return





~x::
num2:="|<>**50$52.Uk00lU30030Tr7kMA067bwDVVs0Ms30664U0q0A0MMK33M0k1VzkA71Xky3y0sQDz3k1k00krA80Q1033ykU3UA047T3kA3zsE0w31U0VUU1kA602"

if (ok:=FindText(X, Y, 873-150000, 476-150000, 873+150000, 476+150000, 0.1, 0.8, num2))
{
  MouseMove, X, Y, 4
}
return




/*

Playimg:="|<>*128$58.zzzXzzzzzz0Tw7zzzzzk0DkTzzzzz00D1zzzzzw00Q7zzzzzk01kTzzzzz1s31zzzzzw7sA7z777wETUkTk0MTk1y31y00Uy07kA7k023s000kS008700071s60kA400w7Uw3UUE07kS3kC0300z1sD0w0A7zw7UQ3k1kTzk600DU71zz0A00z0Q7zy0s03w3kTzs3k0TkDXzzkTVVz1zzzzzzzzs7zzzzzzzzUzzzzzzzzy3zzzzzzzzkTzzzzzzzz1zzzzzzzzwDzzzzzzzzxzs"

if (ok:=FindText(X, Y, 162-150000, 469-150000, 162+150000, 469+150000, 0, 0, Playimg))
{
  MouseMove, X, Y, 4
}







Normalimg:="|<>*109$92.XXXU0000000003UkQkM0000000000sA3g61U00000000C30T1bz3zzzxy0zzUk7kPzxzzzzzszzsA0w7s7wMwMyDTCC3071s0y06021z03Uk0kQ07U1U00D00sA0A700s0M001k0C3111U0C06000M03UkE0MD1UzUkA63UsA6067kMDsC71VwC31k1Vw63y3VkMT3UkS0MD1UnUsQ63UsA7U610MDsC71U0C31w1U0C3y3VkQ03U0TUQ07UzUsQ700s07w7U3sDsC7Vs0D0XzXy1z7z7VsTV3s8"

if (ok:=FindText(X, Y, 1221-150000, 498-150000, 1221+150000, 498+150000, 0, 0, Difficultimg))
{
  MouseMove, X, Y, 4
}







Confirmimg:="|<>*104$94.Q0z0DVyA0240S777U0s0S7kk08E0sQsA0300sD300V01Uz0UQM61UQADy4C21s27zVy60kkzsEw8308Ty7w83307V3kUA0XVstkU4A0C4C2000C33X200k0sE0M048syCQ8E307V01V0kVzsTUVUADy40C6723vUy670kzsE0MQwA0700MQ33vV3VVzkk0A03VsAAC4D27z3U1s0S7kkksEw8MQLUDs3svX73X7lXVlU"

if (ok:=FindText(X, Y, 765-150000, 729-150000, 765+150000, 729+150000, 0, 0, Confirmimg))
{
  MouseMove, X, Y, 4
}







Startimg:="|<>*135$101.D03sTy00000000Dz0s01lsQ00000000wC3U01nUQ00000001kC6001a0s000000030QA003g1k000000060sE006M3U0000000A1kU7URk7s0yDkz7ss3x0TVrUDw7zzvzzzk7y0zzz0DszzvzjlzU7w1zyk00vk61s60s00M1znU00y001k00k00E0Tz001s003U01U00U03y003U007003001U01w007000C006003U00s00Q000Q00Q00DU01y0Fs000s1tz08rk01w1zU7k1k7zy0zbw03s3z0Dk3UDyw1zzzU3k760tU70M0M3VzzU7UCA1n0C0k0k733zUD0QM3y0Q1U1UC43y0S0zk3w0s3030TU3w0y0zk3U1k6070TU1k3w0DU003UA0C070007s0DU0070M0Q07000Rk0D000C0k0s07000zU0T000Q1zzk0D003zU0z000s3zzk0T00TzU3z043k7zzk1zU3zzsDzkwDkTzzw7U"

if (ok:=FindText(X, Y, 1203-150000, 777-150000, 1203+150000, 777+150000, 0, 0, Startimg))
{
  MouseMove, X, Y, 4
}






Configimg:="|<>*131$25.zw7zzy3zzz1zzU00zU00DU003s003w1w1y1z0z1zkQ1zw00zy00Tz00DzU07zk71zkTUTkDk7k7s003s000y000zU00zvkSzzsDzzw7zk"

if (ok:=FindText(X, Y, 25-150000, 976-150000, 25+150000, 976+150000, 0, 0, Configimg))
{
  MouseMove, X, Y, 4
}







Replayimg:="|<>*122$99.zzU000001VU0000000T000000M400000000Q0000030U00000001k00000M40000000060000030U00000000M00000M40000000033zUzz30kDrns3sDU9wDDzyM67zztUr1y1w0RV0v0lk8A6A0AED01s03s6Q01UlU1y1k0700D0n00A3M0DUA00M00s6k01UT00030A30030o00C1k800M7kM3UM7UA1k610070w30y30w3kD0UM00s00M6kM7Un1s030070070y30w7kBU0M00s01s3UM7US1a061w30zz0030w00Ak0kDUQ1Vs00s1k01X0A1a1U070070600AM1UAkC00s01g0s01VUM1X1s0700tU7U0AA30MMPU1s6S71j3VX0kz1zDzz0zUTwTzsM67U7UTyM600z0wy71k0000030k000000kA000000M600000061U0000030k000001UM000000MA000000A30000001VU000000kk4"

if (ok:=FindText(X, Y, 994-150000, 778-150000, 994+150000, 778+150000, 0, 0, Replayimg))
{
  MouseMove, X, Y, 4
}







ReplayPointimg:="|<>*102$32.wzzznz1zzUzw3z0zDkzkT0yDwTW7zbzVkTtzUy3wDkTkC1kDw0003zU001zs000Ty0007zU001zsA0sTy70C7zVs7VzsS1sTy7UT7zVs7lzsS1wTw7UT3z1s7kzky1wDw7UT3zVs7lzwS1wzzbUTTzzs7zzzy1zzzzUDzzzs3zzzy1zzzzkzzzzzTzy"

if (ok:=FindText(X, Y, 840-150000, 167-150000, 840+150000, 167+150000, 0, 0, ReplayPointimg))
{
  MouseMove, X, Y, 4
}






Respawnimg:="|<>*129$240.zzzzzlzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz000zzUzzzzzzzzzzzzzw003zzzy1zzzzzzzzzzzz000zzUzzzzzzzzzzy7zs003zzzs0Tzzzzzzzzzzz000zzUzzzzzzzzzzy3zs003zzzk0Dzzzzzzzzzzz000zzUzzzzzzzzzzy3zw003zzzk0Dzzzzzzzzzzzz1zzzUzzzzzzzzzzy3zzw7zzzzUMTzzzzzzzzzzzzVzzzUzzzzzzzTzzy3zzy7zvzzUwzzzzzzzzzzzzzVzU7UzU7V1zk3sMM0Tzy7y0TzUzy47zVVVsyAA7zVz03Uz03U0TU1s000Dzy7w0DzUTy01y011kQ403zVy01Uy01U0D00s000Dzy7s07zk1y00w01UkQ401zVw01Uw01U0C00M0M0Dzy7k03zk0S00w01Uk8A00zVw3UUw3UU861UM6w2zzy7kA3zs0C0UM01UU8A00zVw7UUw7UUw63kMDy3zzy7kS3zz063kMD1k00A7UzVw00Uw00Uw63sMDy3zzy7kT3zzs63kMT1k00Q7UzVw01Uw01Uw63sMDy3zzy7kT3znw63kMD1s00Q7kzVw7zUw7zUM63kMDy3zzy7kS3zVw61UMC1s00w7kzVw7zUQ7zU0C00MDy3zzy7k03zUM600s01s20w7kzVy01UC01U0D00MDy0Tzy7s03zU0C00w01w30w7kzVy01UC01U0T00sDy0Tzy7s07zk0C01w01w71w7kzVz01kD01U0zU1sDz0Tzy7w0Dzs0S03y01y71w7kzVzk3sDk3Unzs7wTzkzzy7z0zzw1y3DzVXyDXyDkzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzVzzzzzzzzzzzzzzzzzzy7zzzzzzzzzzU"

if (ok:=FindText(X, Y, 641-150000, 403-150000, 641+150000, 403+150000, 0, 0, Respawnimg))
{
  MouseMove, X, Y, 4
}






Yesimg:="|<>*111$34.rCw002Dkk000T3y1wVsDyTy31zzzw4C0w1s0k1U7U6060L0sQMTC3VUUDsQ070TVs0y0y7Vzb3sS060DVw0M1z7s3kC"

if (ok:=FindText(X, Y, 771-150000, 194-150000, 771+150000, 194+150000, 0, 0, Yesimg))
{
  MouseMove, X, Y, 4
}








Namakimg:="|<>*78$192.zzznk00000000Tk0zsDy000000000DD0zzz1k00000000zs0zwTy000000000Q7000z1k00000001ww1sSQD000000000Q7000D1k00000001kQ1kDQ7000000000Q700071k0C7b0071kQ1k7w7000000000Q700031kzzzzs1ztkT1k7w7DzzzwzUDzw7s0031nzzzzy7zzkTVk3w7zzzzzzkzzw7y1w31rzzzzzDkzkTlk1w7zzzzzztzzw7z1y31zUUsEDT0D01lk0w7s8C47Uzs8A7r1y11y00k07w0700tk0w7U0A020TU0A731y31w00k03s0200tk0Q700A000D00A611w31w00k03s0301tk0A700A000D00A410031s00k01kC101lkMA600A000C00A030071s70kD1kT1kTlkM061kA30sC1kA070071sDUkT1k01kTVkQ063sA7UsC3sA0D00D1sBUkT1k03kT1kS063MA7UsC3MA0T00z1sDUkT1k07kT1kT063sA7UsC3sA0D1zz1s70kT1kTzkTVkT061kA7UwC1kA031zz0Q00kT1kDbk3lkTU700A7UwD00A011zb0A00kT1s03s1lkTk700A7UwD00A601s7UC00kT1w03s1lkTs7U0A7UwDU0A701k3UD00kTVy03w1lkTsDk0A7UwDk0A7VXk3sTllszXz07z3lswwDwQSDlwDwQSDnU"

if (ok:=FindText(X, Y, 392-150000, 355-150000, 392+150000, 355+150000, 0, 0, Namakimg))
{
  MouseMove, X, Y, 4
}












doubledungeon:="|<>**50$223.0061y000220440z00U00k00000000qTgMz0003w37zlz3x1zW23zs0ETUTwDrzy0zzzzxzzszzl70b0QkX3UUt13U6088s72AD33Us8Nk37U6MMMUkT03EFVk06UX01U446316700Mk05U0nU1c00E8D00s8Us01EF00M2211UW3U06M02U0BU0Q0086700A4EQ00s9U0A110kkF1k03M01k07U06004310M628C00A4US20UUM88Us00c00kD1U830021VUy31470w62ET10EEAA4EQ3kI7UMDUkT1US11UkNVUW3Uq31800U88A628C3MC2MA00MAkkP0UkM8kEN1kN1UY00k44631Y71471A600Q4M88UFkA6kMDUs7UkG00s22C1Uy3UW3Uw300S3MA4EDUC1kC3UQ3UMD1zs11w1sC1kF1k41Uzx0s62800500700+00A1UTA0U00g00c8Ug00kDaU0314006k06U0500C0M020E00m00I4EK00Q01M03UW006A03M02U0BUC010800lU0+289U0+00a01kF00C303601E0AE700U401kM05144M05U0FU1c8W"

if (ok:=FindText(X, Y, 409-150000, 470-150000, 409+150000, 470+150000, 0, 0, doubledungeon))
{
  MouseMove, X, Y, 4
}
else

doubledungeon2:="|<>**50$223.00k00000220440000U060000000000000000000A00000110220000E01U0000000000000000003000000UU110000800M00000000E0000000000U00000EE0UU000400400000000400000000T08QA7sTcDsEEC7023s1TVyTzU3zg73VC63zw8M4E1Y40I0288M0k1130kE1EEA211A0M80m21462E0O20200Y480A0UUkM80803200g0680B00210E0710100+28020EE8440400W00I01803U010UM01UU0U031800U884220200+00A00Q00k0000800kE0E01UY1UE40011010050060kA00M000843k880870kG1M82010UU0UQ2UQ30g61s43U0422840042E89004100UE00E90EG1U03142180431020820844U000U0UM0U88U890k01UU104041Um10Y10Y22E020E0UA2E40042UM01EF0U00k0kC0080U830s7y0860400200200A3z830E0000c00U00E01U41V040040010010060kY00M0000W00I008010200E2004E00U00E0200900A0000V00F00400U1U081004400E00400E04U0+00U"

if (ok:=FindText(X, Y, 409-150000, 579-150000, 409+150000, 579+150000, 0, 0, doubledungeon2))
{
  MouseMove, X, Y, 4
}








legendstage:="|<>**50$187.40U0Bk1s0333607U30C004lUC0D00S030E07k0Q01Ul300s303002kkC03U0C01U803k0C00kQVU0A1U1U03MA601k0700k4DzkC73zs7Ekw30Vtzkzs661ksTz3kM27zsTyVzw1cMTVUEzkMEA1X3zoDzVyA13zMTzkzm0QAAkE8TkA8A0n3zy7yEz60U1gDzs0N0C66AA61w6460BVzz03A3X0E0K5UA04V3336630732666kg1U0a01U80/2k602EkVVV30k1VV331sK0k0FU0k405Vs3018M0klVUT0MkX1kwD0M08y0M27ykzVVzYC0MNkUTwAMFU0C7wADwzsA13zgCkkzu5UADkkAy6A9U07Vq67zNw7zVzy3sMTz2s67kMAD364k01kT33zsS3zk07U0A01VA300M631X2kzkw01U0A600M03s0600kX1U0Q3U1VVMTsT00k07000A01i0700MEkk0Q0s1kkgQ65k0s03k2"

if (ok:=FindText(X, Y, 979-150000, 873-150000, 979+150000, 873+150000, 0.2, 0.8, legendstage))
{
  MouseMove, X, Y, 4
}




paragon:="|<>**50$109.00s00000000000000000A0000000000000000030000000000000000T1VzyTzXzw7zsTw7zsDkHzzzxzzzDzwwD7zy4M/UEw8D0Vi13s0n212A5U0Q0700q01s0B001y3U0C0300S00s03U00w3k0703U0D00Q01k0001kS3UzUw71sA7ks7001sD1kPkS3Vw63MA7k01wAks8sNVkn33463M03q3sQ4A7ksD1Uq3141zX1sC263kQ70kT1UW0z0k0713U0D00Q21kF0E0M03UVk07U0C00s8U80601kEQ03M07U0o4E403U0s8701j13s0u28U"

if (ok:=FindText(X, Y, 871-150000, 655-150000, 871+150000, 655+150000, 0.1, 0.8, paragon))
{
  MouseMove, X, Y, 4
}


infinite:="|<>**50$90.2001UC60022Ek002001UD60036EE0020011vy003yEE002zz71zwzz1zkT7z3zzj1zzzzXzkTT33V0w067V0n301s0300Q06700O301k0300Q06700S301U0300A0C700C303Us30sD1y70sC3kT1w31wB1271wC2EH1s31g51W71g62EH0031451W71462EH0031451W71462ET1z31451W71462ETVz31451W71462M3U031451271462M3k0314B1271gC3Q3s07X6BX37XiD7D7Q0U"

if (ok:=FindText(X, Y, 872-150000, 552-150000, 872+150000, 552+150000, 0.1, 0.8, infinite))
{
  MouseMove, X, Y, 4
}





num6:="|<>**50$53.kA1zQT0M7UADDsT1Uy0Ms30633o0P060A4Dkkq0A0MM0VUsAS7kk03VkzwD1U001ViME33U033ykU67U023jVsAD3y40D0k88AA40C1UM0EAA0q30s1UMy7j60s60TDw7w0zw"

if (ok:=FindText(X, Y, 873-150000, 589-150000, 873+150000, 589+150000, 0.1, 0.8, num6))
{
  MouseMove, X, Y, 4
}






num5:="|<>**50$55.C600360A071U01X06070k7xlw33vUADDsT13zU6C0k1UUzk1g0M0kE3kkq0A0MM0sMC37VwA08C73zkw66401ViME1zU00kzg80zk008Cy7Uts3y40D0kM033103UMA010kk3MA60A"

if (ok:=FindText(X, Y, 872-150000, 484-150000, 872+150000, 484+150000, 0.1, 0.8, num5))
{
  MouseMove, X, Y, 4
}








num4:="|<>**50$56.SA006A0AQ73001X0371kM00Mk0Vks60ziDUMQC0kwzVw6530AQ1U31XEk1g0M0kEo8MP060AAD263UlsT3001ksTy7Uk00066tV0A0001VzME300008Cy7UTw1z207UM010kkE0s600E8660P1U048"

if (ok:=FindText(X, Y, 873-150000, 532-150000, 873+150000, 532+150000, 0, 0, num4))
{
  MouseMove, X, Y, 4
}





num3:="|<>**50$57.73001X0600sA00AM0k0C1UDvXs671k67bwDUlwA0lk60A7z3U3M0k1UD0MMP060A0M331kMwDU30kQC7zVs7w600krA81zwU067xV0ABY00ERwD1Vs1z207UMA00MM80Q30k021VU6kM704"

if (ok:=FindText(X, Y, 871-150000, 429-150000, 871+150000, 429+150000, 0.1, 0.8, num3))
{
  MouseMove, X, Y, 4
}




num2:="|<>**50$52.Uk00lU30030Tr7kMA067bwDVVs0Ms30664U0q0A0MMK33M0k1VzkA71Xky3y0sQDz3k1k00krA80Q1033ykU3UA047T3kA3zsE0w31U0VUU1kA602"

if (ok:=FindText(X, Y, 873-150000, 476-150000, 873+150000, 476+150000, 0.1, 0.8, num2))
{
  MouseMove, X, Y, 4
}




num1:="|<>**50$52.AA006A0C1kM00Mk1kC1UDvXsC0s33ny7kk30AQ1U330A0P060AA0VVg0M0kT263UlsT0w0QC7zVs0k00MPa403001VzME0A0023jVs0k7w80S1U30kkE0s60A21VU6kM0kU"

if (ok:=FindText(X, Y, 896-150000, 374-150000, 896+150000, 374+150000, 0.1, 0.8, num))
{
  MouseMove, X, Y, 4
}

return
*/
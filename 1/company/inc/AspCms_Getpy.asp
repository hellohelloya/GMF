<%
Dim PY
Sub InitPinYin()
	if not isArray(PY) then
		redim PY(1,395)
		PY(0,0)=-20319:PY(1,0)="a":PY(0,1)=-20317:PY(1,1)="ai":PY(0,2)=-20304:PY(1,2)="an":PY(0,3)=-20295:PY(1,3)="ang":PY(0,4)=-20292:PY(1,4)="ao":PY(0,5)=-20283:PY(1,5)="ba":PY(0,6)=-20265:PY(1,6)="bai":PY(0,7)=-20257:PY(1,7)="ban":PY(0,8)=-20242:PY(1,8)="bang":PY(0,9)=-20230:PY(1,9)="bao":PY(0,10)=-20051:PY(1,10)="bei":PY(0,11)=-20036:PY(1,11)="ben":PY(0,12)=-20032:PY(1,12)="beng":PY(0,13)=-20026:PY(1,13)="bi":PY(0,14)=-20002:PY(1,14)="bian":PY(0,15)=-19990:PY(1,15)="biao":PY(0,16)=-19986:PY(1,16)="bie":PY(0,17)=-19982:PY(1,17)="bin":PY(0,18)=-19976:PY(1,18)="bing":PY(0,19)=-19805:PY(1,19)="bo":PY(0,20)=-19784:PY(1,20)="bu":PY(0,21)=-19775:PY(1,21)="ca":PY(0,22)=-19774:PY(1,22)="cai":PY(0,23)=-19763:PY(1,23)="can":PY(0,24)=-19756:PY(1,24)="cang":PY(0,25)=-19751:PY(1,25)="cao":PY(0,26)=-19746:PY(1,26)="ce":PY(0,27)=-19741:PY(1,27)="ceng":PY(0,28)=-19739:PY(1,28)="cha":PY(0,29)=-19728:PY(1,29)="chai":PY(0,30)=-19725:PY(1,30)="chan":PY(0,31)=-19715:PY(1,31)="chang":PY(0,32)=-19540:PY(1,32)="chao":PY(0,33)=-19531:PY(1,33)="che":PY(0,34)=-19525:PY(1,34)="chen":PY(0,35)=-19515:PY(1,35)="cheng":PY(0,36)=-19500:PY(1,36)="chi":PY(0,37)=-19484:PY(1,37)="chong":PY(0,38)=-19479:PY(1,38)="chou":PY(0,39)=-19467:PY(1,39)="chu":PY(0,40)=-19289:PY(1,40)="chuai":PY(0,41)=-19288:PY(1,41)="chuan":PY(0,42)=-19281:PY(1,42)="chuang":PY(0,43)=-19275:PY(1,43)="chui":PY(0,44)=-19270:PY(1,44)="chun":PY(0,45)=-19263:PY(1,45)="chuo":PY(0,46)=-19261:PY(1,46)="ci":PY(0,47)=-19249:PY(1,47)="cong":PY(0,48)=-19243:PY(1,48)="cou":PY(0,49)=-19242:PY(1,49)="cu":PY(0,50)=-19238:PY(1,50)="cuan":PY(0,51)=-19235:PY(1,51)="cui":PY(0,52)=-19227:PY(1,52)="cun":PY(0,53)=-19224:PY(1,53)="cuo":PY(0,54)=-19218:PY(1,54)="da":PY(0,55)=-19212:PY(1,55)="dai":PY(0,56)=-19038:PY(1,56)="dan":PY(0,57)=-19023:PY(1,57)="dang":PY(0,58)=-19018:PY(1,58)="dao":PY(0,59)=-19006:PY(1,59)="de":PY(0,60)=-19003:PY(1,60)="deng":PY(0,61)=-18996:PY(1,61)="di":PY(0,62)=-18977:PY(1,62)="dian":PY(0,63)=-18961:PY(1,63)="diao":PY(0,64)=-18952:PY(1,64)="die":PY(0,65)=-18783:PY(1,65)="ding":PY(0,66)=-18774:PY(1,66)="diu":PY(0,67)=-18773:PY(1,67)="dong":PY(0,68)=-18763:PY(1,68)="dou":PY(0,69)=-18756:PY(1,69)="du":PY(0,70)=-18741:PY(1,70)="duan":PY(0,71)=-18735:PY(1,71)="dui":PY(0,72)=-18731:PY(1,72)="dun":PY(0,73)=-18722:PY(1,73)="duo":PY(0,74)=-18710:PY(1,74)="e":PY(0,75)=-18697:PY(1,75)="en":PY(0,76)=-18696:PY(1,76)="er":PY(0,77)=-18526:PY(1,77)="fa":PY(0,78)=-18518:PY(1,78)="fan":PY(0,79)=-18501:PY(1,79)="fang":PY(0,80)=-18490:PY(1,80)="fei":PY(0,81)=-18478:PY(1,81)="fen":PY(0,82)=-18463:PY(1,82)="feng":PY(0,83)=-18448:PY(1,83)="fo":PY(0,84)=-18447:PY(1,84)="fou":PY(0,85)=-18446:PY(1,85)="fu":PY(0,86)=-18239:PY(1,86)="ga":PY(0,87)=-18237:PY(1,87)="gai":PY(0,88)=-18231:PY(1,88)="gan":PY(0,89)=-18220:PY(1,89)="gang":PY(0,90)=-18211:PY(1,90)="gao":PY(0,91)=-18201:PY(1,91)="ge":PY(0,92)=-18184:PY(1,92)="gei":PY(0,93)=-18183:PY(1,93)="gen":PY(0,94)=-18181:PY(1,94)="geng":PY(0,95)=-18012:PY(1,95)="gong":PY(0,96)=-17997:PY(1,96)="gou":PY(0,97)=-17988:PY(1,97)="gu":PY(0,98)=-17970:PY(1,98)="gua":PY(0,99)=-17964:PY(1,99)="guai":PY(0,100)=-17961:PY(1,100)="guan":PY(0,101)=-17950:PY(1,101)="guang":PY(0,102)=-17947:PY(1,102)="gui":PY(0,103)=-17931:PY(1,103)="gun":PY(0,104)=-17928:PY(1,104)="guo":PY(0,105)=-17922:PY(1,105)="ha":PY(0,106)=-17759:PY(1,106)="hai":PY(0,107)=-17752:PY(1,107)="han":PY(0,108)=-17733:PY(1,108)="hang":PY(0,109)=-17730:PY(1,109)="hao":PY(0,110)=-17721:PY(1,110)="he":PY(0,111)=-17703:PY(1,111)="hei":PY(0,112)=-17701:PY(1,112)="hen":PY(0,113)=-17697:PY(1,113)="heng":PY(0,114)=-17692:PY(1,114)="hong":PY(0,115)=-17683:PY(1,115)="hou":PY(0,116)=-17676:PY(1,116)="hu":PY(0,117)=-17496:PY(1,117)="hua":PY(0,118)=-17487:PY(1,118)="huai":PY(0,119)=-17482:PY(1,119)="huan":PY(0,120)=-17468:PY(1,120)="huang":PY(0,121)=-17454:PY(1,121)="hui":PY(0,122)=-17433:PY(1,122)="hun":PY(0,123)=-17427:PY(1,123)="huo":PY(0,124)=-17417:PY(1,124)="ji":PY(0,125)=-17202:PY(1,125)="jia":PY(0,126)=-17185:PY(1,126)="jian":PY(0,127)=-16983:PY(1,127)="jiang":PY(0,128)=-16970:PY(1,128)="jiao":PY(0,129)=-16942:PY(1,129)="jie":PY(0,130)=-16915:PY(1,130)="jin":PY(0,131)=-16733:PY(1,131)="jing":PY(0,132)=-16708:PY(1,132)="jiong":PY(0,133)=-16706:PY(1,133)="jiu":PY(0,134)=-16689:PY(1,134)="ju":PY(0,135)=-16664:PY(1,135)="juan":PY(0,136)=-16657:PY(1,136)="jue":PY(0,137)=-16647:PY(1,137)="jun":PY(0,138)=-16474:PY(1,138)="ka":PY(0,139)=-16470:PY(1,139)="kai":PY(0,140)=-16465:PY(1,140)="kan":PY(0,141)=-16459:PY(1,141)="kang":PY(0,142)=-16452:PY(1,142)="kao":PY(0,143)=-16448:PY(1,143)="ke":PY(0,144)=-16433:PY(1,144)="ken":PY(0,145)=-16429:PY(1,145)="keng":PY(0,146)=-16427:PY(1,146)="kong":PY(0,147)=-16423:PY(1,147)="kou":PY(0,148)=-16419:PY(1,148)="ku":PY(0,149)=-16412:PY(1,149)="kua":PY(0,150)=-16407:PY(1,150)="kuai":PY(0,151)=-16403:PY(1,151)="kuan":PY(0,152)=-16401:PY(1,152)="kuang":PY(0,153)=-16393:PY(1,153)="kui":PY(0,154)=-16220:PY(1,154)="kun":PY(0,155)=-16216:PY(1,155)="kuo":PY(0,156)=-16212:PY(1,156)="la":PY(0,157)=-16205:PY(1,157)="lai":PY(0,158)=-16202:PY(1,158)="lan":PY(0,159)=-16187:PY(1,159)="lang":PY(0,160)=-16180:PY(1,160)="lao":PY(0,161)=-16171:PY(1,161)="le":PY(0,162)=-16169:PY(1,162)="lei":PY(0,163)=-16158:PY(1,163)="leng":PY(0,164)=-16155:PY(1,164)="li":PY(0,165)=-15959:PY(1,165)="lia":PY(0,166)=-15958:PY(1,166)="lian":PY(0,167)=-15944:PY(1,167)="liang":PY(0,168)=-15933:PY(1,168)="liao":PY(0,169)=-15920:PY(1,169)="lie":PY(0,170)=-15915:PY(1,170)="lin":PY(0,171)=-15903:PY(1,171)="ling":PY(0,172)=-15889:PY(1,172)="liu":PY(0,173)=-15878:PY(1,173)="long":PY(0,174)=-15707:PY(1,174)="lou":PY(0,175)=-15701:PY(1,175)="lu":PY(0,176)=-15681:PY(1,176)="lv":PY(0,177)=-15667:PY(1,177)="luan":PY(0,178)=-15661:PY(1,178)="lue":PY(0,179)=-15659:PY(1,179)="lun":PY(0,180)=-15652:PY(1,180)="luo":PY(0,181)=-15640:PY(1,181)="ma":PY(0,182)=-15631:PY(1,182)="mai":PY(0,183)=-15625:PY(1,183)="man":PY(0,184)=-15454:PY(1,184)="mang":PY(0,185)=-15448:PY(1,185)="mao":PY(0,186)=-15436:PY(1,186)="me":PY(0,187)=-15435:PY(1,187)="mei":PY(0,188)=-15419:PY(1,188)="men":PY(0,189)=-15416:PY(1,189)="meng":PY(0,190)=-15408:PY(1,190)="mi":PY(0,191)=-15394:PY(1,191)="mian":PY(0,192)=-15385:PY(1,192)="miao":PY(0,193)=-15377:PY(1,193)="mie":PY(0,194)=-15375:PY(1,194)="min":PY(0,195)=-15369:PY(1,195)="ming":PY(0,196)=-15363:PY(1,196)="miu":PY(0,197)=-15362:PY(1,197)="mo":PY(0,198)=-15183:PY(1,198)="mou":PY(0,199)=-15180:PY(1,199)="mu":PY(0,200)=-15165:PY(1,200)="na":PY(0,201)=-15158:PY(1,201)="nai":PY(0,202)=-15153:PY(1,202)="nan":PY(0,203)=-15150:PY(1,203)="nang":PY(0,204)=-15149:PY(1,204)="nao":PY(0,205)=-15144:PY(1,205)="ne":PY(0,206)=-15143:PY(1,206)="nei":PY(0,207)=-15141:PY(1,207)="nen":PY(0,208)=-15140:PY(1,208)="neng":PY(0,209)=-15139:PY(1,209)="ni":PY(0,210)=-15128:PY(1,210)="nian":PY(0,211)=-15121:PY(1,211)="niang":PY(0,212)=-15119:PY(1,212)="niao":PY(0,213)=-15117:PY(1,213)="nie":PY(0,214)=-15110:PY(1,214)="nin":PY(0,215)=-15109:PY(1,215)="ning":PY(0,216)=-14941:PY(1,216)="niu":PY(0,217)=-14937:PY(1,217)="nong":PY(0,218)=-14933:PY(1,218)="nu":PY(0,219)=-14930:PY(1,219)="nv":PY(0,220)=-14929:PY(1,220)="nuan":PY(0,221)=-14928:PY(1,221)="nue":PY(0,222)=-14926:PY(1,222)="nuo":PY(0,223)=-14922:PY(1,223)="o":PY(0,224)=-14921:PY(1,224)="ou":PY(0,225)=-14914:PY(1,225)="pa":PY(0,226)=-14908:PY(1,226)="pai":PY(0,227)=-14902:PY(1,227)="pan":PY(0,228)=-14894:PY(1,228)="pang":PY(0,229)=-14889:PY(1,229)="pao":PY(0,230)=-14882:PY(1,230)="pei":PY(0,231)=-14873:PY(1,231)="pen":PY(0,232)=-14871:PY(1,232)="peng":PY(0,233)=-14857:PY(1,233)="pi":PY(0,234)=-14678:PY(1,234)="pian":PY(0,235)=-14674:PY(1,235)="piao":PY(0,236)=-14670:PY(1,236)="pie":PY(0,237)=-14668:PY(1,237)="pin":PY(0,238)=-14663:PY(1,238)="ping":PY(0,239)=-14654:PY(1,239)="po":PY(0,240)=-14645:PY(1,240)="pu":PY(0,241)=-14630:PY(1,241)="qi":PY(0,242)=-14594:PY(1,242)="qia":PY(0,243)=-14429:PY(1,243)="qian":PY(0,244)=-14407:PY(1,244)="qiang":PY(0,245)=-14399:PY(1,245)="qiao":PY(0,246)=-14384:PY(1,246)="qie":PY(0,247)=-14379:PY(1,247)="qin":PY(0,248)=-14368:PY(1,248)="qing":PY(0,249)=-14355:PY(1,249)="qiong":PY(0,250)=-14353:PY(1,250)="qiu":PY(0,251)=-14345:PY(1,251)="qu":PY(0,252)=-14170:PY(1,252)="quan":PY(0,253)=-14159:PY(1,253)="que":PY(0,254)=-14151:PY(1,254)="qun":PY(0,255)=-14149:PY(1,255)="ran":PY(0,256)=-14145:PY(1,256)="rang":PY(0,257)=-14140:PY(1,257)="rao":PY(0,258)=-14137:PY(1,258)="re":PY(0,259)=-14135:PY(1,259)="ren":PY(0,260)=-14125:PY(1,260)="reng":PY(0,261)=-14123:PY(1,261)="ri":PY(0,262)=-14122:PY(1,262)="rong":PY(0,263)=-14112:PY(1,263)="rou":PY(0,264)=-14109:PY(1,264)="ru":PY(0,265)=-14099:PY(1,265)="ruan":PY(0,266)=-14097:PY(1,266)="rui":PY(0,267)=-14094:PY(1,267)="run":PY(0,268)=-14092:PY(1,268)="ruo":PY(0,269)=-14090:PY(1,269)="sa":PY(0,270)=-14087:PY(1,270)="sai":PY(0,271)=-14083:PY(1,271)="san":PY(0,272)=-13917:PY(1,272)="sang":PY(0,273)=-13914:PY(1,273)="sao":PY(0,274)=-13910:PY(1,274)="se":PY(0,275)=-13907:PY(1,275)="sen":PY(0,276)=-13906:PY(1,276)="seng":PY(0,277)=-13905:PY(1,277)="sha":PY(0,278)=-13896:PY(1,278)="shai":PY(0,279)=-13894:PY(1,279)="shan":PY(0,280)=-13878:PY(1,280)="shang":PY(0,281)=-13870:PY(1,281)="shao":PY(0,282)=-13859:PY(1,282)="she":PY(0,283)=-13847:PY(1,283)="shen":PY(0,284)=-13831:PY(1,284)="sheng":PY(0,285)=-13658:PY(1,285)="shi":PY(0,286)=-13611:PY(1,286)="shou":PY(0,287)=-13601:PY(1,287)="shu":PY(0,288)=-13406:PY(1,288)="shua":PY(0,289)=-13404:PY(1,289)="shuai":PY(0,290)=-13400:PY(1,290)="shuan":PY(0,291)=-13398:PY(1,291)="shuang":PY(0,292)=-13395:PY(1,292)="shui":PY(0,293)=-13391:PY(1,293)="shun":PY(0,294)=-13387:PY(1,294)="shuo":PY(0,295)=-13383:PY(1,295)="si":PY(0,296)=-13367:PY(1,296)="song":PY(0,297)=-13359:PY(1,297)="sou":PY(0,298)=-13356:PY(1,298)="su":PY(0,299)=-13343:PY(1,299)="suan":PY(0,300)=-13340:PY(1,300)="sui":PY(0,301)=-13329:PY(1,301)="sun":PY(0,302)=-13326:PY(1,302)="suo":PY(0,303)=-13318:PY(1,303)="ta":PY(0,304)=-13147:PY(1,304)="tai":PY(0,305)=-13138:PY(1,305)="tan":PY(0,306)=-13120:PY(1,306)="tang":PY(0,307)=-13107:PY(1,307)="tao":PY(0,308)=-13096:PY(1,308)="te":PY(0,309)=-13095:PY(1,309)="teng":PY(0,310)=-13091:PY(1,310)="ti":PY(0,311)=-13076:PY(1,311)="tian":PY(0,312)=-13068:PY(1,312)="tiao":PY(0,313)=-13063:PY(1,313)="tie":PY(0,314)=-13060:PY(1,314)="ting":PY(0,315)=-12888:PY(1,315)="tong":PY(0,316)=-12875:PY(1,316)="tou":PY(0,317)=-12871:PY(1,317)="tu":PY(0,318)=-12860:PY(1,318)="tuan":PY(0,319)=-12858:PY(1,319)="tui":PY(0,320)=-12852:PY(1,320)="tun":PY(0,321)=-12849:PY(1,321)="tuo":PY(0,322)=-12838:PY(1,322)="wa":PY(0,323)=-12831:PY(1,323)="wai":PY(0,324)=-12829:PY(1,324)="wan":PY(0,325)=-12812:PY(1,325)="wang":PY(0,326)=-12802:PY(1,326)="wei":PY(0,327)=-12607:PY(1,327)="wen":PY(0,328)=-12597:PY(1,328)="weng":PY(0,329)=-12594:PY(1,329)="wo":PY(0,330)=-12585:PY(1,330)="wu":PY(0,331)=-12556:PY(1,331)="xi":PY(0,332)=-12359:PY(1,332)="xia":PY(0,333)=-12346:PY(1,333)="xian":PY(0,334)=-12320:PY(1,334)="xiang":PY(0,335)=-12300:PY(1,335)="xiao":PY(0,336)=-12120:PY(1,336)="xie":PY(0,337)=-12099:PY(1,337)="xin":PY(0,338)=-12089:PY(1,338)="xing":PY(0,339)=-12074:PY(1,339)="xiong":PY(0,340)=-12067:PY(1,340)="xiu":PY(0,341)=-12058:PY(1,341)="xu":PY(0,342)=-12039:PY(1,342)="xuan":PY(0,343)=-11867:PY(1,343)="xue":PY(0,344)=-11861:PY(1,344)="xun":PY(0,345)=-11847:PY(1,345)="ya":PY(0,346)=-11831:PY(1,346)="yan":PY(0,347)=-11798:PY(1,347)="yang":PY(0,348)=-11781:PY(1,348)="yao":PY(0,349)=-11604:PY(1,349)="ye":PY(0,350)=-11589:PY(1,350)="yi":PY(0,351)=-11536:PY(1,351)="yin":PY(0,352)=-11358:PY(1,352)="ying":PY(0,353)=-11340:PY(1,353)="yo":PY(0,354)=-11339:PY(1,354)="yong":PY(0,355)=-11324:PY(1,355)="you":PY(0,356)=-11303:PY(1,356)="yu":PY(0,357)=-11097:PY(1,357)="yuan":PY(0,358)=-11077:PY(1,358)="yue":PY(0,359)=-11067:PY(1,359)="yun":PY(0,360)=-11055:PY(1,360)="za":PY(0,361)=-11052:PY(1,361)="zai":PY(0,362)=-11045:PY(1,362)="zan":PY(0,363)=-11041:PY(1,363)="zang":PY(0,364)=-11038:PY(1,364)="zao":PY(0,365)=-11024:PY(1,365)="ze":PY(0,366)=-11020:PY(1,366)="zei":PY(0,367)=-11019:PY(1,367)="zen":PY(0,368)=-11018:PY(1,368)="zeng":PY(0,369)=-11014:PY(1,369)="zha":PY(0,370)=-10838:PY(1,370)="zhai":PY(0,371)=-10832:PY(1,371)="zhan":PY(0,372)=-10815:PY(1,372)="zhang":PY(0,373)=-10800:PY(1,373)="zhao":PY(0,374)=-10790:PY(1,374)="zhe":PY(0,375)=-10780:PY(1,375)="zhen":PY(0,376)=-10764:PY(1,376)="zheng":PY(0,377)=-10587:PY(1,377)="zhi":PY(0,378)=-10544:PY(1,378)="zhong":PY(0,379)=-10533:PY(1,379)="zhou":PY(0,380)=-10519:PY(1,380)="zhu":PY(0,381)=-10331:PY(1,381)="zhua":PY(0,382)=-10329:PY(1,382)="zhuai":PY(0,383)=-10328:PY(1,383)="zhuan":PY(0,384)=-10322:PY(1,384)="zhuang":PY(0,385)=-10315:PY(1,385)="zhui":PY(0,386)=-10309:PY(1,386)="zhun":PY(0,387)=-10307:PY(1,387)="zhuo":PY(0,388)=-10296:PY(1,388)="zi":PY(0,389)=-10281:PY(1,389)="zong":PY(0,390)=-10274:PY(1,390)="zou":PY(0,391)=-10270:PY(1,391)="zu":PY(0,392)=-10262:PY(1,392)="zuan":PY(0,393)=-10260:PY(1,393)="zui":PY(0,394)=-10256:PY(1,394)="zun":PY(0,395)=-10254:PY(1,395)="zuo"
	end if
End Sub

Function ascToPY(ByVal iCode)
	if iCode>47 and iCode<58 then
		ascToPY=iCode-48
	elseif iCode>64 and iCode<91 then
		ascToPY=Chr(iCode)
	elseif iCode>96 and iCode<123 then
		ascToPY=Chr(iCode)
	elseif iCode<-20319 or iCode>-10247 then
		ascToPY=""
	else		
		dim i,l:InitPinYin:l=UBound(PY,2):i=Clng(l * 0.5)
		if PY(0,i) > iCode then
			for i=i to 0 step -1:if PY(0,i) <= iCode then:exit for:end if:next
		else
			for i=i to l-1:if PY(0,i+1) > iCode then:exit for:end if:next
		end if
		ascToPY=PY(1,i)
	end if
End Function

Function getPY(ByVal Str)
	dim i,l,pyStr:l=Len(Str):pyStr="":for i=1 to l:pyStr=pyStr&ascToPY(asc(mid(Str,i,1))):next:getPY=pyStr
End Function

'response.write getPY("企业建站系统")
%>
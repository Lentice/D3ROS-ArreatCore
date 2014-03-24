#include-once

;
; Fichier inclus uniquement en mode dev
;

HotKeySet("{F1}", "Testing")
HotKeySet("{F4}", "Testing_IterateObjetcsList")
;HotKeySet("{F6}", "Read_Scene")
;HotKeySet("{F7}", "Drawn")
HotKeySet("{F8}", "MarkPos")
HotKeySet("{F11}", "MonsterListing")


Func MarkPos()
	$currentloc = GetCurrentPos()
	_log($currentloc[0] & ", " & $currentloc[1] & ", " & $currentloc[2] & ",1,25");
EndFunc   ;==>MarkPos


Func MonsterListing()
	$Object = IterateObjectList(0)
	$foundtarget = 0
	_log("monster listing ===========================")
	For $i = 0 To UBound($Object, 1) - 1
		_ArraySort($Object, 0, 0, 0, 8)
		If $Object[$i][2] <> -1  Then
			_log($Object[$i][2])
		EndIf
	Next
EndFunc   ;==>MonsterListing


Func Testing_IterateObjetcsList()

	Local $index, $offset, $count, $item[10]
	startIterateObjectsList($index, $offset, $count)

	While iterateObjectsList($index, $offset, $count, $item)

		For $i = 0 To UBound($item) - 1
			_log($item[$i])
		Next

		$ACD = GetACDOffsetByACDGUID($item[0])
		$CurrentIdAttrib = _memoryread($ACD + 0x120, $d3, "ptr");
		$quality = GetAttribute($CurrentIdAttrib, $Atrib_Item_Quality_Level)

		_log('quality : ' & $quality)
		_log("--------")
		_log("--------")
	WEnd
EndFunc   ;==>Testing_IterateObjetcsList



Func Testing()

;offsetlist()

;_checkbackpacksize()
#cs
	Local $index, $offset, $count, $item[10]
	startIterateObjectsList($index, $offset, $count)

	GLOBAL $ItemRefresh = false
	Global $gestion_affixe_loot = false
	$banlist = ""
	dim $items
	;_log("count -> " & $count)
	While iterateObjectsList($index, $offset, $count, $item)
			_log("Ofs : " & $item[8]  & " - "  & $item[1] & " - Data 1 : " & $item[5] & " - Data 2 : " & $item[6] & " - Guid : " & $item[0])

			;if is_loot($item) then
			;	handle_loot($item, $banlist, $items)
			;EndIf

	WEnd
	;_log("Actor Ofs -> " & hex(GetPlayerOffset()))
#ce

;GetAct()
;ListUi(0)

;_log($_Myoffset)



;Load_Attrib_GlobalStuff()
;$maxhp = GetAttribute($_MyGuid, $Atrib_Hitpoints_Max_Total) ; dirty placement
;GetMaxResource($_MyGuid, $namecharacter)

;Load_Attrib_GlobalStuff()
;GetMaxResource($_MyGuid, $namecharacter)
;if _playerdead() then
;	_log("mort")
;else
;	_log("en vie")
;endif
;InteractByActorName('Player_Shared_Stash')


;Auto_spell_init()
;GestSpellInit()
;GetMaxResource($_MyGuid, $namecharacter)

;Global $shrinebanlist = ""
;Global $a_range = 999999
;Global $MonsterList = "Beast_B|Goblin|Goatman_M|Goatman_R|WitherMoth|Beast_A|Scavenger|zombie|Corpulent|Skeleton|QuillDemon|FleshPitFlyer|Succubus|Scorpion|azmodanBodyguard|succubus|ThousandPounder|FallenGrunt|FallenChampion|FallenHound|FallenShaman|GoatMutant|demonTrooper_|creepMob|Brickhouse_A|Brickhouse_B|Triune_|TriuneVesselActivated_|TriuneVessel|Triune_Summonable_|ConductorProxyMaster|sandWasp|TriuneCultist|SandShark|Lacuni|Ghoul_|Uber|GoatMutant_Ranged_A|GoatMutant_Melee_A|fastMummy_C|demonFlyer|WoodWraith|TriuneVessel_|snakeMan_|uber_|Uber"
;Attack()


;ListUi(1)

#cs
_log( "2 : "  & GetTextUI(1540, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 2.LayoutRoot.Name"))
_log("3 : "  &GetTextUI(375, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 3.LayoutRoot.Name"))
_log("4 : "  &GetTextUI(646, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 4.LayoutRoot.Name"))
_log("5 : "  &GetTextUI(302, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 5.LayoutRoot.Name"))
_log("6 : "  &GetTextUI(579, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 6.LayoutRoot.Name"))
_log("7 : "  &GetTextUI(1898, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 7.LayoutRoot.Name"))
_log("8 : "  &GetTextUI(176, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 8.LayoutRoot.Name"))
_log("9 : "  &GetTextUI(502, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 9.LayoutRoot.Name"))
_log("10 : "  &GetTextUI(1270, "Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 10.LayoutRoot.Name"))
#ce


;TakeWPV2(0)

#cs
$result = GetOfsUI("Root.NormalLayer.WaypointMap_main.LayoutRoot.OverlayContainer.POI.entry 1.LayoutRoot.Name", 1)
_log($result)
Dim $Point = GetPositionUI($result)
Dim $Point2 = GetUIRectangle($Point[0], $Point[1], $Point[2], $Point[3])

MouseMove($Point2[0] + $Point2[2] / 2, $Point2[1] + $Point2[3] / 2, 1)
#ce

;TakeWPV2(0)i

;Detect_Str_full_inventory()
;listui(1)

;Repair()
;Detect_Str_full_inventory()

;StashAndRepair()
;_log(fastcheckuiitemvisible("Root.NormalLayer.shop_dialog_mainPage.repair_dialog.RepairEquipped", 1, 124))

;enoughtPotions()
;ClickOnStashTab(1)

;offsetlist()
;_log("ETAT TP -> " &  _memoryRead( _memoryRead($_Myoffset + 0x1a4, $d3, "ptr") + 0x18, $d3, "int"))

;_log(fastcheckuiitemactived("Root.NormalLayer.deathmenu_dialog.dialog_main.button_revive_at_corpse", 139))
;ClickUI("Root.NormalLayer.deathmenu_dialog.dialog_main.button_revive_in_town", 496)
;_log("c'est partit !")
;While NOT fastcheckuiitemvisible("Root.NormalLayer.gamemenu_dialog.gamemenu_bkgrnd.ButtonStackContainer.button_leaveGame", 1, 1644)
			;sleep(200)
		;WEnd
;_log("trouvé")

;Global $a_range=70
;Global $SpecialmonsterList="Uber_|uber_"
;Global $monsterList="Ghoul_|Beast_B|Goatman_M|Goatman_R|WitherMoth|Beast_A|Goblin|Scavenger|Corpulent|Skeleton|QuillDemon|FleshPitFlyer|Succubus|Scorpion|azmodanBodyguard|succubus|ThousandPounder|FallenGrunt|FallenChampion|FallenHound|FallenShaman|GoatMutant|demonFlyer_B|demonTrooper_|creepMob|Brickhouse_A|Brickhouse_B|Triune_|TriuneVesselActivated_|TriuneVessel|Triune_Summonable_|ConductorProxyMaster|goblin|sandWasp|TriuneCultist|SandShark|Lacuni|Uber_|uber_"
;$IgnoreList = ""
;Dim $test_iterateallobjectslist = IterateFilterAttackV4($IgnoreList)
;If IsArray($test_iterateallobjectslist) Then;;
;
;		for $i=0 to Ubound($test_iterateallobjectslist) - 1
;			_log("")
;			for $y=0 to $TableSizeGuidStruct - 1
;				_log( $i & ") (" & $y  & ") " & $test_iterateallobjectslist[$i][$y] )
;			Next
;			_log("")
;		Next
;EndIf

;_log("Finish")

BanActor("Toto1")
BanActor("Toto2")
BanActor("Toto3")
BanActor("Toto4")

consoleLog(IsBannedActor("Toto1"))
consoleLog(IsBannedActor("Toto2"))
consoleLog(IsBannedActor("Toto3"))
consoleLog(IsBannedActor("Toto4"))
consoleLog(IsBannedActor("Toto5"))

consoleLog($TableBannedActors[0])


consoleLog($PreBuff1,$LOG_LEVEL_DEBUG)

EndFunc   ;==>Testing ##*******##*******##*******##*******##*******##*******##*******##*******##*******##*******##*******##*******###

;###########################################################################
;###########################################################################
;###########################################################################
;###########################################################################
;###########################################################################
;###########################################################################


;Global $Scene_table_totale[1][10]
;Global $NavCell_table_totale[1][10]
;Global $Scene_table_id_scene[1]
#cs
Func Read_Scene()

	$nb_totale_scene_record = 0
	$up = False

	While 1

		$ObManStoragePtr = _MemoryRead($ofs_objectmanager, $d3, "ptr")
		$offset = $ObManStoragePtr + 0x794 + 0x178
		$sceneCountPtr = _MemoryRead($offset, $d3, "ptr") + 0x108
		$countScene = _MemoryRead($sceneCountPtr, $d3, "int")

		$sceneFirstPtr = _MemoryRead($offset, $d3, "ptr") + 0x148
		Dim $obj_scene[1][10]
		$count = 0

		;################################## ITERATION OBJ SCENE ########################################
		For $i = 0 To $countScene
			$scenePtr = _MemoryRead($sceneFirstPtr, $d3, "ptr") + $i * 0x2A8

			$temp_id_world = _MemoryRead($scenePtr + 0x008, $d3, "ptr") ;id world
			$temp_id_scene = _MemoryRead($scenePtr, $d3, "ptr") ;id world
			$correlation = True



			If $temp_id_world = $_MyACDWorld And $temp_id_scene <> 0xFFFFFFFF Then;id world

				If $nb_totale_scene_record = 0 Then
					$Scene_table_id_scene[0] = $temp_id_scene
					$nb_totale_scene_record += 1
				Else
					For $a = 0 To UBound($Scene_table_id_scene) - 1
						If $Scene_table_id_scene[$a] = $temp_id_scene Then
							$correlation = False
							ExitLoop
						EndIf
					Next
					If $correlation = True Then
						$Ucount = UBound($Scene_table_id_scene)
						ReDim $Scene_table_id_scene[$Ucount + 1]
						$Scene_table_id_scene[$Ucount] = $temp_id_scene
					EndIf
				EndIf

				If $correlation = True Then

					$nb_totale_scene_record += 1
					$count += 1
					ReDim $obj_scene[$count][10]

					$obj_scene[$count - 1][0] = $temp_id_scene ;id_scene
					$scenePtr += 0x004
					$obj_scene[$count - 1][1] = $temp_id_world ;id world
					$obj_scene[$count - 1][2] = _MemoryRead($scenePtr + 0x014, $d3, "int") ;sno_levelarea
					$obj_scene[$count - 1][3] = _MemoryRead($scenePtr + 0x0D8, $d3, "ptr") ;id_sno_scene

					$obj_scene[$count - 1][4] = _MemoryRead($scenePtr + 0x0EC, $d3, "float") ;Vec2 Meshmin x
					$obj_scene[$count - 1][5] = _MemoryRead($scenePtr + 0x0F0, $d3, "float") ;Vec2 Meshmin y
					$obj_scene[$count - 1][6] = _MemoryRead($scenePtr + 0x0F4, $d3, "float") ;Vec2 Meshmin z

					$obj_scene[$count - 1][7] = _MemoryRead($scenePtr + 0x164, $d3, "float") ;Vec2 Meshmax x
					$obj_scene[$count - 1][8] = _MemoryRead($scenePtr + 0x168, $d3, "float") ;Vec2 Meshmax y
					$obj_scene[$count - 1][9] = _MemoryRead($scenePtr + 0x16C, $d3, "float") ;Vec2 Meshmax z


					ReDim $Scene_table_totale[$nb_totale_scene_record][10]

					$Scene_table_totale[$nb_totale_scene_record - 1][0] = $obj_scene[$count - 1][0]
					$Scene_table_totale[$nb_totale_scene_record - 1][1] = $obj_scene[$count - 1][1]
					$Scene_table_totale[$nb_totale_scene_record - 1][2] = $obj_scene[$count - 1][2]
					$Scene_table_totale[$nb_totale_scene_record - 1][3] = $obj_scene[$count - 1][3]
					$Scene_table_totale[$nb_totale_scene_record - 1][4] = $obj_scene[$count - 1][4]
					$Scene_table_totale[$nb_totale_scene_record - 1][5] = $obj_scene[$count - 1][5]
					$Scene_table_totale[$nb_totale_scene_record - 1][6] = $obj_scene[$count - 1][6]
					$Scene_table_totale[$nb_totale_scene_record - 1][7] = $obj_scene[$count - 1][7]
					$Scene_table_totale[$nb_totale_scene_record - 1][8] = $obj_scene[$count - 1][8]
					$Scene_table_totale[$nb_totale_scene_record - 1][9] = $obj_scene[$count - 1][9]


				EndIf


			EndIf

		Next
		;################################################################################################


		Dim $list_sno_scene = IndexSNO(0x18EDF60, 0)


		;############################## ITERATION DU SNO ################################################
		For $i = 1 To UBound($list_sno_scene) - 1
			$correlation = False
			$current_obj_scene = 0

			For $x = 0 To UBound($obj_scene) - 1
				If $list_sno_scene[$i][1] = $obj_scene[$x][3] Then
					$correlation = True
					$current_obj_scene = $x
				EndIf
			Next

			If $correlation Then
				$NavMeshDef = $list_sno_scene[$i][0] + 0x040
				$NavZoneDef = $list_sno_scene[$i][0] + 0x280

				;############## ITERATION DES NAVCELL ################
				$CountNavCell = _memoryRead($NavZoneDef, $d3, "int")
				$NavCellPtr = _memoryRead($NavZoneDef + 0x08, $d3, "ptr")

				If $CountNavCell <> 0 Then
					Dim $Navcell_Table[$CountNavCell][9]
					Local $NavCellStruct = DllStructCreate("float;float;float;float;float;float;short;short;int")

					For $t = 0 To $CountNavCell - 1

						DllCall($d3[0], 'int', 'ReadProcessMemory', 'int', $d3[1], 'int', $NavCellPtr + ($t * 0x20), 'ptr', DllStructGetPtr($NavCellStruct), 'int', DllStructGetSize($NavCellStruct), 'int', '')

						If Mod(DllStructGetData($NavCellStruct, 7), 2) = 1 Then
							$flag = 1
						Else
							$flag = 0
						EndIf

						If UBound($NavCell_table_totale) - 1 = 0 And $up = False Then
							$up = True
						Else
							ReDim $NavCell_table_totale[UBound($NavCell_table_totale) + 1][10]
						EndIf

						$num = UBound($NavCell_table_totale) - 1
						$NavCell_Table_Totale[$num][0] = DllStructGetData($NavCellStruct, 1)
						$NavCell_Table_Totale[$num][1] = DllStructGetData($NavCellStruct, 2)
						$NavCell_Table_Totale[$num][2] = DllStructGetData($NavCellStruct, 3)
						$NavCell_Table_Totale[$num][3] = DllStructGetData($NavCellStruct, 4)
						$NavCell_Table_Totale[$num][4] = DllStructGetData($NavCellStruct, 5)
						$NavCell_Table_Totale[$num][5] = DllStructGetData($NavCellStruct, 6)
						$NavCell_Table_Totale[$num][6] = $flag
						$NavCell_Table_Totale[$num][7] = DllStructGetData($NavCellStruct, 8)
						$NavCell_Table_Totale[$num][8] = DllStructGetData($NavCellStruct, 9)
						$NavCell_Table_Totale[$num][9] = $obj_scene[$current_obj_scene][0]
					Next
				Else

					For $a = 0 To UBound($Scene_table_id_scene) - 1
						If $Scene_table_id_scene[$a] = $obj_scene[$current_obj_scene][0] Then
							_ArrayDelete($Scene_table_id_scene, $a)
							ExitLoop
						EndIf
					Next

					For $a = 0 To UBound($Scene_table_totale) - 1
						If $Scene_table_totale[$a][0] = $obj_scene[$current_obj_scene][0] Then
							_Array2DDelete($Scene_table_totale, $a)
							$nb_totale_scene_record -= 1
							ExitLoop
						EndIf
					Next

				EndIf

			EndIf
		Next

		_log("fin Iteration")
		Sleep(500)
	WEnd

EndFunc   ;==>Read_Scene
#ce

#cs
Func Drawn()
	_log("taille du tab Scene-> " & UBound($Scene_table_totale))
	_log("taille du tab NavCell-> " & UBound($NavCell_Table_Totale))
	;_ArrayDisplay($Scene_table_id_scene)
	Dim $buffMax[2] = [0, 0]
	Dim $buffMin[2] = [999999999, 99999999]
	Dim $indexMax[2] = [0, 0] ; 0 -> Index MeshMax X le plus grand | 1 -> Index MEshMax Y le plus grand
	Dim $indexMin[2] = [999999999, 99999999]

	For $i = 0 To UBound($Scene_table_totale) - 1
		If $buffMax[0] < $Scene_table_totale[$i][7] Then
			$buffMax[0] = $Scene_table_totale[$i][7]
			$indexMax[0] = $i
		EndIf

		If $buffMin[0] > $Scene_table_totale[$i][4] Then
			$buffMin[0] = $Scene_table_totale[$i][4]
			$indexMin[0] = $i
		EndIf


		If $buffMax[1] < $Scene_table_totale[$i][8] Then
			$buffMax[1] = $Scene_table_totale[$i][8]
			$indexMax[1] = $i
		EndIf

		If $buffMin[1] > $Scene_table_totale[$i][5] Then
			$buffMin[1] = $Scene_table_totale[$i][5]
			$indexMin[1] = $i
		EndIf
	Next

	Initiate_GDIpicture($Scene_table_totale[$indexMax[1]][8] - $Scene_table_totale[$indexMin[1]][5], $Scene_table_totale[$indexMax[0]][7] - $Scene_table_totale[$indexMin[0]][4])



	For $i = 0 To UBound($Scene_table_totale) - 1
		For $y = 0 To UBound($NavCell_Table_Totale) - 1

			If $Scene_table_totale[$i][0] = $NavCell_Table_Totale[$y][9] Then

				;_arraydisplay($NavCell_Table_Totale)

				$vx = ($Scene_table_totale[$i][4] - $Scene_table_totale[$indexMin[0]][4]) + $NavCell_Table_Totale[$y][0]
				$vy = ($Scene_table_totale[$i][5] - $Scene_table_totale[$indexMin[1]][5]) + $NavCell_Table_Totale[$y][1]

				;_log($i & "-" &  $y)
				;_arraydisplay($NavCell_Table_Totale)
				$tx = $NavCell_Table_Totale[$y][3] - $NavCell_Table_Totale[$y][0]
				$ty = $NavCell_Table_Totale[$y][4] - $NavCell_Table_Totale[$y][1]
				$flag = $NavCell_Table_Totale[$y][6]

				;_log($vx & " - " & $vy)
				;_log($tx & " - " & $ty)

				Draw_Nav($vy, $vx, $flag, $ty, $tx)

			EndIf
		Next

		;Draw_Nav(($Scene_table_totale[$i][5] - $Scene_table_totale[$indexMin[1]][5]), ($Scene_table_totale[$i][4] - $Scene_table_totale[$indexMin[0]][4]), 3, $Scene_table_totale[$i][8] - $Scene_table_totale[$i][5], $Scene_table_totale[$i][7] - $Scene_table_totale[$i][4])
	Next

	Save_GDIpicture()
	Load_GDIpicture()
EndFunc   ;==>Drawn
#ce
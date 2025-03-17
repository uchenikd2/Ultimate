----------------
-- ���������
---------------

-- ����������� ��������� (<0.9 �����; 0.9-1.1 ������; >1.1 ������) [��������� = 1.0]
local kef = 1.0

-- ����������� �������� ���� ��������� [��������� = 1.05]
local kr = 1.05

-- ������� ��� (0 ��������/������� ���������; 1 ��������; 2 ��������; 3 ������; 4 ��������/������; 5 ���������) [��������� = 0]
local brz = 1

---------------
-- ��� �������
---------------

-- ���� �������
local v01 = 140 -- 01
local v02 = 150 -- 02
local v03 = 160 -- 03
local v04 = 170 -- 04
local v05 = 180 -- 05
local v06 = 220 -- 06

local v11 = 200 -- 11+f.������01
local v12 = 220 -- 12+f.������01
local v13 = 240 -- 13+f.������01+v.������01
local v14 = 260 -- 14+f.������01+v.�����1
local v15 = 280 -- 15+f.������01
local v16 = 350 -- 16

local v21 = 300 -- 21+f.������12
local v22 = 350 -- 22+f.������12
local v23 = 400 -- 23+f.������12+v.������12
local v24 = 450 -- 24+f.������12+v.�����2
local v25 = 500 -- 25+f.������12+v.������2
local v26 = 620 -- 26

local v31 = 550 -- 31
local v32 = 600 -- 32
local v33 = 650 -- 33+v.������23
local v34 = 700 -- 34+v.�����3
local v35 = 750 -- 35+v.������3
local v36 = 800 -- 36
local v37 = 920 -- 37

local vp03 = 960 -- ������03

--����� ����� � ���� 2
function zoneMageResp2()
	return {
		{
			spells = { 	
						yn('g000ss0002'), -- ��������
						yn3('g000ss0007'), -- ���������
						yn('g000ss0178'), -- ������� --��
		
						yn('g000ss0025'), -- ������ I: ���
						yn('g000ss0023'), -- ���� ������

						yn('g000ss0045'), -- tormentio
						yn('g000ss0044'), -- Menta minoris

						yn('g000ss0134'), -- ��������� ����
						yn('g000ss0064'), -- ��������

						yn('g000ss0101'), -- ����
						yn('g000ss0098'), -- ������ I: ��� �����
						
						yn('g000ss0183'), -- ����������
						yn('g000ss0197'), -- ��������������
						yn('g000ss0131'), -- ������������� �c�����
						
						yn3('g000ss0029'), -- ������ ���������
						yn('g000ss0184'), -- �����.�����
						yn('g000ss0034'), -- ������������� ������ --���
						
						yn('g000ss0050'), -- Chronos
						yn('g000ss0185'), -- terebrare corde

						yn('g000ss0186'), -- �������� �����
						yn('g000ss0069'), -- ��������� ��������
						yn3('g000ss0124'), -- �������� �����������

						yn('g000ss0187'), -- ����������
						yn('g000ss0133'), -- ����� ����
						yn('g000ss0107'), -- ����� ������� --��
					
			},			
			guard = guard2m(),
		},
	}
end

----------------------
----------------------

-- ����� �1
function zoneMerch1()
return {
	{
		goods = {
			itemTypes = { Item.Orb },
			value = { min = 400, max = 400 },
			itemValue = { min = 400, max = 400 },
			items = {
				{ id = 'g000ig0001', min = 5, max = 5 },
				{ id = 'g000ig0006', min = 5, max = 5 },
				{ id = 'g001ig0378', min = 3, max = 3 }, -- ���75
				{ id = 'g000ig0005', min = 3, max = 3 }, -- ���50

				orr({ id = 'g000ig0011', min = 1, max = 1 }, { id = 'g000ig0002', min = 1, max = 1 }), --���15/������15
				orr({ id = 'g000ig0014', min = 1, max = 1 }, { id = 'g000ig0008', min = 1, max = 1 }), --�����15/��������15
				{ id = 'g000ig0008', min = 1, max = 1 }, --��������15
				orr({ id = 'g000ig0021', min = 1, max = 1 }, { id = 'g000ig0024', min = 1, max = 1 }), --����/����
				orr({ id = 'g000ig0022', min = 1, max = 1 }, { id = 'g000ig0023', min = 1, max = 1 }), --����/�����
				{ id = 'g000ig0021', min = 1, max = 1 }, --����
				
				orr({ id = 'g001ig0125', min = 1, max = 1 }, { id = 'g001ig0036', min = 1, max = 1 }), --������/������
				{ id = rnd('g001ig0341','g001ig0128','g002ig0008'), min = 1, max = 1 }, --������� ������ �� �������/���� ������/������� �������� ����������
				{ id = d15(), min = 1, max = 1 }, -- ����. �������
				{ id = e2(), min = 1, max = 1},
				{ id = e4(), min = 1, max = 1},

				{ id = 'g002ig0007', min = 1, max = 2 }, --����� ���������� ������������ 
				rnd({ id = 'g002ig0005', min = 1, max = 1}, { id = 'g002ig0007', min = 1, max = 1}), -- ����� ���������������� / ����� ���������� ������������
				
				orr({ id = 'g001ig0130', min = 1, max = 1 }, orr({ id = 'g001ig0561', min = 1, max = 1 }, { id = 'g000ig0010', min = 1, max = 1 })), -- ������� ����������� +20 ����� | ������� ����������������� / ������� �������������� 10 �������� 500
				orr3({ id = 'g001ig0530', min = 1, max = 1 }, { id = 'g001ig0530', min = 1, max = 1 }, { id = 'g001ig0524', min = 1, max = 1 }), -- ����� ����������� ���� (���������) 66% / ����� ����������� (�����) 33% 
				orr3({ id = 'g001ig0528', min = 1, max = 1 }, { id = 'g001ig0525', min = 1, max = 1 }, { id = 'g001ig0531', min = 1, max = 1 }), -- ������� ���� (������) / ������� �������� (���������) / ����� ����� (������)				

				--�����
				orr(orr({ id = 'g001ig0184', min = 1, max = 1 }, { id = 'g000ig9120', min = 1, max = 1 }), { id = 'g000ig9109', min = 1, max = 1 }), -- �������� �������������� 400 / �������� ���� ������ 500 | �������� ������� ��������� II 450
				
				--������ (����.������ / ������ "Chronos"-���, �����.�����-����, ����.�����+���, ����������+����, ���.���������+40��)
				watorr({ id = 'g000ig5027', min = 1, max = 1}, orr5({ id = 'g000ig5050', min = 1, max = 1}, { id = 'g001ig0253', min = 1, max = 1}, { id = 'g001ig0255', min = 1, max = 1}, { id = 'g001ig0256', min = 1, max = 1}, { id = 'g000ig5029', min = 1, max = 1})),

				--�����= 400
				{ id = merch1b(), min = 1, max = 1 },

				--�����= 400-550
				{ id = merch1(), min = 1, max = 1 },

				--���-���= ���500-650 / ���500-700
				{ id = ruin1(), min = 1, max = 1 },
				
				--�����200
				{ id = wand1(), min = 1, max = 1 },				
				
			}
		},
--�����			guard = guard1(),
	}
}
end

-- ����� �2
function zoneMerch2()
return {
	{
		goods = {
			itemTypes = { Item.Orb },
			value = { min = 500, max = 600 },
			itemValue = { min = 500, max = 600 },
			items = {
				{ id = 'g000ig0001', min = 5, max = 5 },
				{ id = 'g000ig0006', min = 5, max = 5 },
				{ id = 'g001ig0378', min = 3, max = 3 }, -- ���75

				orr({ id = 'g000ig0011', min = 1, max = 1 }, { id = 'g000ig0002', min = 1, max = 1 }), --���15/������15
				orr({ id = 'g000ig0014', min = 1, max = 1 }, { id = 'g000ig0008', min = 1, max = 1 }), --�����15/��������15
				{ id = 'g000ig0008', min = 1, max = 1 }, --��������15
				orr({ id = 'g000ig0021', min = 1, max = 1 }, { id = 'g000ig0024', min = 1, max = 1 }), --����/����
				orr({ id = 'g000ig0022', min = 1, max = 1 }, { id = 'g000ig0023', min = 1, max = 1 }), --����/�����
				{ id = 'g000ig0024', min = 1, max = 1 }, --����

				orr({ id = 'g001ig0125', min = 1, max = 1 }, { id = 'g001ig0036', min = 1, max = 1 }), --������/������
				orr({ id = e4(), min = 1, max = 1 }, { id = 'g001ig0128', min = 1, max = 1 }), --�������400/���� ������
				{ id = rnd(d15(),'g001ig0351','g002ig0008'), min = 1, max = 1 }, -- ����. �������/����-����������/������� �������� ���������� 

				{ id = e4(), min = 1, max = 1},
				{ id = pw5(), min = 1, max = 1},

				{ id = 'g002ig0007', min = 2, max = 3 }, --����� ���������� ������������ 
				orr({ id = 'g002ig0005', min = 1, max = 2 }, { id = 'g002ig0006', min = 1, max = 1 }), --����� ���������������� / ����� ������������

				orr({ id = 'g001ig0026', min = 1, max = 1 }, orr3({ id = 'g001ig0519', min = 1, max = 1 }, { id = 'g001ig0083', min = 1, max = 1 }, { id = 'g001ig0501', min = 1, max = 1 })), -- ���� ����������� +10 ����� ��� | ����� ��������� (-10 ����) / ����� ������ 5 ��� 5 �������� 500 / ���� �������� (���� �� �����)
				orr({ id = 'g001ig0526', min = 1, max = 1 }, { id = 'g001ig0527', min = 1, max = 1 }), -- ����� ���������� (������) / ����� ���������� (��������)	
				orr({ id = 'g001ig0531', min = 1, max = 1 }, { id = 'g001ig0529', min = 1, max = 1 }), -- ����� ����� (������) / ������� ���������� ����

				--�����
				orr5({ id = 'g000ig9128', min = 1, max = 1}, { id = 'g001ig0259', min = 1, max = 1}, { id = 'g001ig0259', min = 1, max = 1}, { id = 'g001ig0063', min = 1, max = 1}, { id = 'g000ig9116', min = 1, max = 1}), -- �������� ������ 800 / �������� ������� ��������� III 600 / �������� ������� ��������� III 600 / �������� ������� 800 / �������� ������ ����� 800

				--������
				orr5({ id = 'g000ig5089', min = 1, max = 1}, { id = 'g000ig5026', min = 1, max = 1}, { id = 'g000ig5013', min = 1, max = 1}, { id = 'g000ig5012', min = 1, max = 1}, { id = 'g000ig5111', min = 1, max = 1}), -- ������ "Preces"-����.���� / ������ "���� ������"+��� / ������ "������ ����"+����.���� / ������ "������ �����"+����� / ������ "����������"-����.����
			
				--��� 700-850
				{ id = merch2(), min = 1, max = 1 },
				
				--��� 600-800=
				{ id = ruin21(), min = 1, max = 1 },

				--����� 500-700=
				{ id = ruin22(), min = 1, max = 1 },
				
				--�����400
				{ id = wand2(), min = 1, max = 1 },
			
			}
		},
--�����		guard = guard2(),
	},
}
end

-- ����� �3
function zoneMerchZone3()
return {
	{
		goods = {
			itemTypes = { Item.Orb },
			value = { min = 700, max = 700 },
			itemValue = { min = 700, max = 700 },
			items = {
				{ id = 'g000ig0001', min = 5, max = 5 },
				{ id = 'g000ig0006', min = 5, max = 5 },

				orr({ id = 'g000ig0011', min = 1, max = 1 }, { id = 'g000ig0002', min = 1, max = 1 }), --���15/������15
				orr({ id = 'g000ig0014', min = 1, max = 1 }, { id = 'g000ig0008', min = 1, max = 1 }), --�����15/��������15
				{ id = 'g000ig0008', min = 1, max = 1 }, --��������15
				orr({ id = 'g000ig0021', min = 1, max = 1 }, { id = 'g000ig0024', min = 1, max = 1 }), --����/����
				orr({ id = 'g000ig0022', min = 1, max = 1 }, { id = 'g000ig0023', min = 1, max = 1 }), --����/�����
				{ id = 'g000ig0023', min = 1, max = 1 }, --�����

				orr({ id = 'g001ig0125', min = 1, max = 1 }, { id = 'g001ig0036', min = 1, max = 1 }), --������/������
				orr({ id = 'g001ig0355', min = 1, max = 1 }, { id = 'g001ig0128', min = 1, max = 1 }), --��������/���� ������
				{ id = rnd(d15(),'g001ig0351','g002ig0008'), min = 1, max = 1 }, -- ����. �������/����-����������/������� �������� ���������� 
				{ id = pw5(), min = 1, max = 1},
				{ id = pw6(), min = 1, max = 1},

				{ id = 'g002ig0007', min = 2, max = 3 }, --����� ���������� ������������ 
				orr({ id = 'g002ig0005', min = 1, max = 2 }, { id = 'g002ig0006', min = 1, max = 1 }), --����� ���������������� / ����� ������������

				orr(orr({ id = 'g001ig0022', min = 1, max = 1 }, { id = 'g001ig0028', min = 1, max = 1 }), { id = 'g001ig0534', min = 1, max = 1 }), -- ���� �������� 10 ��� �������� 600 / ���� ������������ 5%�� ��� 700 | �������� ������������ ������� (��. ������.) 700
				orr({ id = 'g001ig0548', min = 1, max = 1 }, { id = 'g001ig0019', min = 1, max = 1 }), -- ����� ����� (+10 ����) 700 / ����� ���� ���������� (+10 ����) 900
				orr({ id = 'g001ig0521', min = 1, max = 1 }, { id = 'g001ig0376', min = 1, max = 1 }), -- ����� ������������ (-20 ����) 1000 / ������� ���������� +30 �����

				--�����
				orr5({id = 'g000ig9130', min = 1, max = 1}, {id = 'g000ig9136', min = 1, max = 1}, {id = 'g001ig0185', min = 1, max = 1}, {id = 'g000ig9123', min = 1, max = 1}, {id = 'g001ig0202', min = 1, max = 1}), -- �������� ���� 1000 / �������� ���� 1600 / �������� ������������� 1800 / �������� ������ 1000 / �������� ������� ��������� IV 1000

				--������
				orr5({ id = 'g000ig5090', min = 1, max = 1}, { id = 'g000ig5116', min = 1, max = 1}, { id = 'g000ig5114', min = 1, max = 1}, { id = 'g001ig0586', min = 1, max = 1}, { id = 'g000ig5095', min = 1, max = 1}), -- ������ "Potentia Ignis"-40������ / ������ "������������� �������"+50�� / ������ "�������"-30����� / ������ "�������������-20���� / ������ "�������"-����
			
				--���=
				{ id = ruin31(), min = 1, max = 1 },
				
				--�����=
				{ id = ruin32(), min = 1, max = 1 },

				--���=
				{ id = ruin33(), min = 1, max = 1 },

				--�����550 ����� �����|����� ������|����� �������
				orr3({id = 'g000ig6020', min = 1, max = 1}, {id = 'g000ig6014', min = 1, max = 1}, {id = 'g001ig0398', min = 1, max = 1}),
				
				--�����700 ����� �������� ����� / ����� �����5x5 / ����� ������� / ����� ���� / ����� ����3x3
				orr5({ id = 'g000ig6017', min = 1, max = 1 }, { id = 'g001ig0098', min = 1, max = 1 }, { id = 'g000ig6018', min = 1, max = 1 }, { id = 'g000ig6013', min = 1, max = 1 }, { id = 'g001ig0097', min = 1, max = 1 }),
			}
		},
--�����		guard = guard3(),
	},
}
end


----------------------

-- ����� ���� 1
local valueRuinRespZ = { min = v14*kef, max = v14*kef*kr }
local goldRuinRespZ = { min = 350, max = 400 } 

function zoneRuinRespZ()
return {
	{
		gold = goldRuinRespZ,
		loot = {
			items = {
				{id = ruin1(), min = 1, max = 1},
			},	
		},
		guard = {
			subraceTypes = rsub(),
			value = valueRuinRespZ
		}
	},	
}
end


-- ����� ���� 2
local valueRuinZone = { min = v24*kef, max = v24*kef*kr }
local goldRuinZone = { min = 450, max = 500 }

function zoneRuinZone2()
return {
	{
		gold = goldRuinZone,
		loot = {
			items = {
				{id = ruin21(), min = 1, max = 1},
			},	
		},
		guard = {
			subraceTypes = NoUndead(),
			value = valueRuinZone
		}
	},

	{
		gold = goldRuinZone,
		loot = {
			items = {
				{id = ruin22(), min = 1, max = 1},
			},	
		},
		guard = {
			subraceTypes = NoUndead(),
			value = valueRuinZone
		}
	},
}
end

-- ����� ���� 3
local valueRuinZone3 = { min = v34*kef, max = v34*kef*kr }
local goldRuinZone3 = { min = 550, max = 600 }

function zoneRuinZone3()
return {
	{
		gold = goldRuinZone3,
		loot = {
			items = {
				{id = ruin31(), min = 1, max = 1},
			},	
		},
		guard = {
			subraceTypes = NoUndead(),
			value = valueRuinZone3
		}
	},
	{
		gold = goldRuinZone3,
		loot = {
			items = {
				{id = ruin32(), min = 1, max = 1},
			},	
		},
		guard = {
			subraceTypes = NoUndead(),
			value = valueRuinZone3
		}
	},	
	{
		gold = goldRuinZone3,
		loot = {
			items = {
				{id = ruin33(), min = 1, max = 1},
			},	
		},
		guard = {
			subraceTypes = NoUndead(),
			value = valueRuinZone3
		}
	},	
}
end

---------------------

-- ��������� ����
function getMinesRespZ(race)
	local mines = {
		gold = 1,
	}
	if race == Race.Human then
		mines.lifeMana = 1
	elseif race == Race.Dwarf then
		mines.runicMana = 1
	elseif race == Race.Undead then
		mines.deathMana = 1
	elseif race == Race.Heretic then
		mines.infernalMana = 1
	elseif race == Race.Elf then
		mines.groveMana = 1
	end
	return mines
end

-- ��������� �1.1
function getMinesRespZ11(race)
	local mines = {}
	if race == Race.Human then
		mines.lifeMana = 1
		mines.runicMana = 1
		mines.groveMana = 1
	elseif race == Race.Dwarf then
		mines.runicMana = 1
		mines.lifeMana = 1
		mines.groveMana = 1
	elseif race == Race.Undead then
		mines.deathMana = 1
		mines.infernalMana = 1
		mines.groveMana = 1
	elseif race == Race.Heretic then
		mines.infernalMana = 1
		mines.deathMana = 1
		mines.groveMana = 1
	elseif race == Race.Elf then
		mines.groveMana = 1
		mines.lifeMana = 1
		mines.infernalMana = 1
	end
	return mines
end

-- ��������� �1.2
function getMinesRespZ12(race)
	local mines = {
		gold = 1,
	}
	if race == Race.Human then
		mines.deathMana = 1
		mines.infernalMana = 1
	elseif race == Race.Dwarf then
		mines.deathMana = 1
		mines.infernalMana = 1
	elseif race == Race.Undead then
		mines.lifeMana = 1
		mines.runicMana = 1
	elseif race == Race.Heretic then
		mines.lifeMana = 1
		mines.runicMana = 1
	elseif race == Race.Elf then
		mines.runicMana = 1
		mines.deathMana = 1
	end
	return mines
end

-- ��������� �2
function getMinesZone2(race, race2)
	local mines = {
		gold = 1,
	}

	if race == Race.Human then
		mines.lifeMana = 1
	elseif race == Race.Dwarf then
		mines.runicMana = 1
	elseif race == Race.Undead then
		mines.deathMana = 1
	elseif race == Race.Heretic then
		mines.infernalMana = 1
	elseif race == Race.Elf then
		mines.groveMana = 1
	end	

	if race2 == Race.Human then
		mines.lifeMana = 1
	elseif race2 == Race.Dwarf then
		mines.runicMana = 1
	elseif race2 == Race.Undead then
		mines.deathMana = 1
	elseif race2 == Race.Heretic then
		mines.infernalMana = 1
	elseif race2 == Race.Elf then
		mines.groveMana = 1
	end	

  return mines

end

-- ��������� �3
function getMinesZone3(race, race2)
	local mines = {
		gold = 1,
	}
	if race == Race.Human and race2 == Race.Dwarf then
		mines.deathMana = 1
		mines.infernalMana = 1
		mines.groveMana = 1
	elseif race == Race.Human and race2 == Race.Undead then
		mines.runicMana = 1
		mines.infernalMana = 1
		mines.groveMana = 1
	elseif race == Race.Human and race2 == Race.Heretic then
		mines.runicMana = 1
		mines.deathMana = 1
		mines.groveMana = 1
	elseif race == Race.Human and race2 == Race.Elf then
		mines.runicMana = 1
		mines.deathMana = 1
		mines.infernalMana = 1
	elseif race == Race.Dwarf and race2 == Race.Undead then
		mines.lifeMana = 1
		mines.infernalMana = 1
		mines.groveMana = 1
	elseif race == Race.Dwarf and race2 == Race.Heretic then
		mines.lifeMana = 1
		mines.deathMana = 1
		mines.groveMana = 1
	elseif race == Race.Dwarf and race2 == Race.Elf then
		mines.lifeMana = 1
		mines.deathMana = 1
		mines.infernalMana = 1
	elseif race == Race.Undead and race2 == Race.Heretic then
		mines.lifeMana = 1
		mines.runicMana = 1
		mines.groveMana = 1
	elseif race == Race.Undead and race2 == Race.Elf then
		mines.lifeMana = 1
		mines.runicMana = 1
		mines.infernalMana = 1
	elseif race == Race.Heretic and race2 == Race.Elf then
		mines.lifeMana = 1
		mines.runicMana = 1
		mines.deathMana = 1
--
	elseif race == Race.Dwarf and race2 == Race.Human then
		mines.deathMana = 1
		mines.infernalMana = 1
		mines.groveMana = 1
	elseif race == Race.Undead and race2 == Race.Human then
		mines.runicMana = 1
		mines.infernalMana = 1
		mines.groveMana = 1
	elseif race == Race.Heretic and race2 == Race.Human then
		mines.runicMana = 1
		mines.deathMana = 1
		mines.groveMana = 1
	elseif race == Race.Elf and race2 == Race.Human then
		mines.runicMana = 1
		mines.deathMana = 1
		mines.infernalMana = 1
	elseif race == Race.Undead and race2 == Race.Dwarf then
		mines.lifeMana = 1
		mines.infernalMana = 1
		mines.groveMana = 1
	elseif race == Race.Heretic and race2 == Race.Dwarf then
		mines.lifeMana = 1
		mines.deathMana = 1
		mines.groveMana = 1
	elseif race == Race.Elf and race2 == Race.Dwarf then
		mines.lifeMana = 1
		mines.deathMana = 1
		mines.infernalMana = 1
	elseif race == Race.Heretic and race2 == Race.Undead then
		mines.lifeMana = 1
		mines.runicMana = 1
		mines.groveMana = 1
	elseif race == Race.Elf and race2 == Race.Undead then
		mines.lifeMana = 1
		mines.runicMana = 1
		mines.infernalMana = 1
	elseif race == Race.Elf and race2 == Race.Heretic then
		mines.lifeMana = 1
		mines.runicMana = 1
		mines.deathMana = 1
	end	

  return mines

end


----------------

-- ����� ��� �������� ���� 1
function unitsMercen0(race)
local unitsm = {}
local i = 1

if race == Race.Human then
unitsm[i] = { id = 'g003uu5001', level = 1, unique = false } i = i + 1 -- ���� ���������
unitsm[i] = { id = 'g000uu0001', level = 1, unique = false } i = i + 1 -- ������
unitsm[i] = { id = 'g000uu0006', level = 1, unique = false } i = i + 1 -- ������
unitsm[i] = { id = 'g000uu0011', level = 1, unique = false } i = i + 1 -- ����������
unitsm[i] = { id = 'g000uu0008', level = 1, unique = false } i = i + 1 -- ������
unitsm[i] = { id = 'g000uu7628', level = 1, unique = false } i = i + 1 -- ��������� ��������
unitsm[i] = { id = 'g000uu0018', level = 1, unique = true } i = i + 1 -- �����

elseif race == Race.Dwarf then
unitsm[i] = { id = 'g000uu0036', level = 1, unique = false } i = i + 1 -- ����
unitsm[i] = { id = 'g004uu5039', level = 1, unique = false } i = i + 1 -- ������� ����
unitsm[i] = { id = 'g000uu0026', level = 1, unique = false } i = i + 1 -- �������� �������
unitsm[i] = { id = 'g000uu0033', level = 1, unique = false } i = i + 1 -- ��������
unitsm[i] = { id = 'g000uu0029', level = 1, unique = false } i = i + 1 -- �������� �������
unitsm[i] = { id = 'g000uu7627', level = 1, unique = false } i = i + 1 -- �������� ������
unitsm[i] = { id = 'g000uu0043', level = 1, unique = true } i = i + 1 -- ����

elseif race == Race.Undead then
unitsm[i] = { id = 'g000uu0086', level = 1, unique = false } i = i + 1 -- �������
unitsm[i] = { id = 'g001uu7539', level = 1, unique = false } i = i + 1 -- �������
unitsm[i] = { id = 'g000uu0080', level = 1, unique = false } i = i + 1 -- �����
unitsm[i] = { id = 'g000uu0078', level = 1, unique = false } i = i + 1 -- ����������
unitsm[i] = { id = 'g000uu0093', level = 1, unique = false } i = i + 1 -- �������
unitsm[i] = { id = 'g001uu7592', level = 1, unique = false } i = i + 1 -- ������
unitsm[i] = { id = 'g000uu0092', level = 1, unique = true } i = i + 1 -- ���������

elseif race == Race.Heretic then
unitsm[i] = { id = 'g000uu0052', level = 1, unique = false } i = i + 1 -- ���������
unitsm[i] = { id = 'g000uu0062', level = 1, unique = false } i = i + 1 -- �������
unitsm[i] = { id = 'g000uu0055', level = 1, unique = false } i = i + 1 -- ��������
unitsm[i] = { id = 'g000uu0057', level = 1, unique = false } i = i + 1 -- ����
unitsm[i] = { id = 'g000uu7605', level = 1, unique = false } i = i + 1 -- ��������� ���
unitsm[i] = { id = 'g000uu0069', level = 1, unique = true } i = i + 1 -- ������
unitsm[i] = { id = 'g004uu6120', level = 1, unique = true } i = i + 1 -- �������� �������

elseif race == Race.Elf then
unitsm[i] = { id = 'g000uu8014', level = 1, unique = false } i = i + 1 -- �������-��������
unitsm[i] = { id = 'g000uu8018', level = 1, unique = false } i = i + 1 -- ���������
unitsm[i] = { id = 'g000uu8025', level = 1, unique = false } i = i + 1 -- ��������� ����
unitsm[i] = { id = 'g000uu8031', level = 1, unique = false } i = i + 1 -- ���
unitsm[i] = { id = 'g003uu8037', level = 1, unique = false } i = i + 1 -- ��������� �����
unitsm[i] = { id = 'g000uu7629', level = 1, unique = false } i = i + 1 -- ����������� ����
unitsm[i] = { id = 'g000uu8029', level = 1, unique = true } i = i + 1 -- ������

end

return unitsm
end


-- ������� � ���� 1
function zoneMercenZone1(race)
return {
	{
		units = unitsMercen0(race),
		guard = guard1n(),
	},
}
end


-- ����� ��� �������� ���� 3
function unitsMercen3()
local unitsm = {}
local i = 1

unitsm[i] = { id = 'g001uu8308', level = 1, unique = false } i = i + 1 -- ������� �������

if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu5024', level = 1, unique = true } i = i + 1 end -- ����-����
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu7590', level = 1, unique = true } i = i + 1 end -- ����-�������
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu8274', level = 1, unique = true } i = i + 1 end -- ������-��������
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu8157', level = 1, unique = true } i = i + 1 end -- ������-��������
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu5012', level = 1, unique = true } i = i + 1 end -- ���-�������
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g001uu7546', level = 1, unique = true } i = i + 1 end -- ���-���������
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu8247', level = 1, unique = true } i = i + 1 end -- ����������
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu8045', level = 1, unique = true } i = i + 1 end -- �������
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu6112', level = 1, unique = true } i = i + 1 end -- ����� �������
if math.random(0,2) ~= 1 then unitsm[i] = { id = 'g000uu8047', level = 1, unique = true } i = i + 1 end -- ������

return unitsm
end

-- ������� � ���� 3
function zoneMercenZone3()
return {
	{
		units = unitsMercen3(),
		guard = guard3n(),
	},
}
end

----------------------

-- ������� ����
function bags0()
return {
	count = 1,
	loot = {
			items = {
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g001ig0180', min = 2, max = 2}, -- ���25
				orr3({ id = rmss(), min = 1, max = 1 }, { id = 'g000ig7001', min = 1, max = 1 }, { id = 'g000ig7001', min = 1, max = 1 }), --����.���.���/������50/������50
				orr({ id = d15(), min = 1, max = 1 },{ id = 'g000ig0008', min = 1, max = 1 }), -- ��.�������/��������15
				-- ����� ����������� ���� (���������) / ����� ����������� (�����) / ����� ����������� ���� (���������) / ����� ���������� (��������) / ����� ���������+1����
				orr5({ id = 'g001ig0530', min = 1, max = 1 }, { id = 'g001ig0524', min = 1, max = 1 }, { id = 'g001ig0530', min = 1, max = 1 }, { id = 'g001ig0527', min = 1, max = 1 }, { id = 'g001ig0532', min = 1, max = 1 }),
			}
	}
}
end


-- ������� �1
function bags1()
return {
	count = 1,
	loot = {
			items = {
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g000ig0005', min = 1, max = 1}, -- ���50
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
				orr3({ id = rmss(), min = 1, max = 1 }, { id = 'g001ig0431', min = 1, max = 1 }, { id = 'g001ig0431', min = 1, max = 1 }), --����.���.���/������75/������75
				orr({ id = 'g001ig0125', min = 1, max = 1}, { id = 'g001ig0036', min = 1, max = 1}), -- ������/������				
				{ id = e2(), min = 1, max = 1 },
				-- ������� �������� (���������) / ������� �������� (���������) / ������� ���� (������) | ����� ����� (������) / ����� ������ ����� (+2 ������)
				orr5({ id = 'g001ig0525', min = 1, max = 1 }, { id = 'g001ig0525', min = 1, max = 1 }, { id = 'g001ig0528', min = 1, max = 1 }, { id = 'g001ig0531', min = 1, max = 1 }, { id = 'g001ig0533', min = 1, max = 1 }),
			}
	}
}
end

-- ������� �2
function bags2()
return {
	count = 1,
	loot = {
			items = {
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g001ig0378', min = 1, max = 1}, -- ���75				
				{ id = 'g000ig0005', min = 1, max = 1}, -- ���50
				orr({ id = rms(), min = 1, max = 1 }, { id = 'g000ig7002', min = 1, max = 1 }), --����.���/������100				
				orr({ id = d15(), min = 1, max = 1 },{ id = w15(), min = 1, max = 1 }), -- ��.�������/��.����
				{ id = e4(), min = 1, max = 1 },
				-- ����� ���������� (��������) / ����� ���������� (������) / ����� ���������� (������) / ����� ��������� (-10 ����) / ����� ������� (���� 10)
				orr5({ id = 'g001ig0527', min = 1, max = 1 }, { id = 'g001ig0526', min = 1, max = 1 }, { id = 'g001ig0526', min = 1, max = 1 }, { id = 'g001ig0519', min = 1, max = 1 }, { id = 'g001ig0523', min = 1, max = 1 }),
				orr({ id = 'g001ig0125', min = 1, max = 1}, { id = 'g001ig0036', min = 1, max = 1}), -- ������/������				
			}
		}
}
end

-- ������� �3
function bags3()
return {
	count = 1,
	loot = {
			items = {
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g000ig0006', min = 1, max = 1 }, --���100
				{ id = 'g001ig0378', min = 1, max = 1}, -- ���75				
				orr3({ id = rmsb(), min = 1, max = 1 }, { id = 'g001ig0486', min = 1, max = 1 }, { id = 'g001ig0432', min = 1, max = 1 }), --����.����.���/����� ��� ����������/������� (�������������)125
				orr({ id = b15(), min = 1, max = 1 },{ id = w15(), min = 1, max = 1 }), -- ��.�����15/��.����
				{ id = pw5(), min = 1, max = 1 },
				orr({ id = 'g001ig0355', min = 1, max = 1 }, { id = 'g001ig0128', min = 1, max = 1 }), --��������/���� ������
				-- ������� ���������� ���� (�����) / ������� ���������� ���� (�����) / �������� ������������ ������� (����� �����) / ����� ������������-20���� / ���� �������� (���)
				orr5({ id = 'g001ig0529', min = 1, max = 1 }, { id = 'g001ig0529', min = 1, max = 1 }, { id = 'g001ig0534', min = 1, max = 1 }, { id = 'g001ig0521', min = 1, max = 1 }, { id = 'g001ig0501', min = 1, max = 1 }),
			}
		}
	}
end

----------------------
-- ��� �������
----------------------

-- ���� ��� �� ���� 50%
function yn(what)
	local radn = math.random(0,1)
	if radn == 0 then
	return what
	elseif radn == 1 then
	return ""
	end
end

-- ���� ��� �� ���� 66%
function yn3(what)
	local radn = math.random(0,2)
	if radn == 0 then
	return what
	elseif radn == 1 then
	return what
	elseif radn == 2 then
	return ""
	end
end

-- ��� / ���
function orr(what, what2)
	local radn = math.random(0,1)
	if radn == 0 then
	return what
	elseif radn == 1 then
	return what2
	end
end

-- ��� / ��� 3
function orr3(what, what2, what3)
	local radn = math.random(0,2)
	if radn == 0 then
	return what
	elseif radn == 1 then
	return what2
	elseif radn == 2 then
	return what3
	end
end

-- ��� / ��� 5
function orr5(what, what2, what3, what4, what5)
	local radn = math.random(0,4)
	if radn == 0 then
	return what
	elseif radn == 1 then
	return what2
	elseif radn == 2 then
	return what3
	elseif radn == 3 then
	return what4
	elseif radn == 4 then
	return what5
	end
end

-- ���������
function rnd(...)
    return (select(math.random(select('#', ...)), ...))
end


-- ���� ����, ��
function watorr(water, other)
	if brz == 0 then
	return orr5(water, other, other, other, other)
	elseif brz == 1 then
	return other
	elseif brz == 2 then
	return other
	elseif brz == 3 then
	return orr3(water, water, other)
	elseif brz == 4 then
	return orr(water, other)
	elseif brz == 5 then
	return orr3(water, other, other)
	end
end

-- ������� ������
function getPlayerSubRace(race)
	if race == Race.Human then return Subrace.Human
	elseif race == Race.Dwarf then return Subrace.Dwarf
	elseif race == Race.Undead then return Subrace.Undead
	elseif race == Race.Heretic then return Subrace.Heretic
	elseif race == Race.Elf then return Subrace.Elf
	end
end

-- ������� ������ ��� �����
function ExtraBigHomeMana(race)
	
	shmn = 'g001ig0277' -- ������� ��� ���� �����
	sdw = 'g001ig0279' -- ������� ��� ���� ���
	sun = 'g001ig0280' -- ������� ��� ���� ������
	shr = 'g001ig0278' -- ������� ��� ���� �����������
	self = 'g001ig0281' -- ������� ��� ���� ������� �������� 
	
	if race == Race.Human then return shmn
	elseif race == Race.Dwarf then return sdw
	elseif race == Race.Undead then return sun
	elseif race == Race.Heretic then return shr
	elseif race == Race.Elf then return self
	end
end


-- ��� ��� � ��-��� �� ������ �� ����. �����
function ExtraManaProject4(race)
	
	shmn = orr('g001ig0149','g001ig0147') -- ��� ���� ������ \ ��� ���� �����������
	sdw = orr('g001ig0149','g001ig0147') -- ��� ���� ������ \ ��� ���� �����������
	sun = orr('g001ig0146','g001ig0148') -- ��� ���� ����� \ ��� ���� ���
	shr = orr('g001ig0146','g001ig0148') -- ��� ���� ����� \ ��� ���� ���
	self = orr('g001ig0149','g001ig0148') -- ��� ���� ������ \ ��� ���� ���
	
	if race == Race.Human then return shmn
	elseif race == Race.Dwarf then return sdw
	elseif race == Race.Undead then return sun
	elseif race == Race.Heretic then return shr
	elseif race == Race.Elf then return self
	end
end


-- ��������� ����� ��� �����
function rmss()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g001ig0481' --�����
	elseif radn == 1 then
	return 'g001ig0485' --���
	elseif radn == 2 then
	return 'g001ig0482' --������.
	elseif radn == 3 then
	return 'g001ig0483' --���
	elseif radn == 4 then
	return 'g001ig0484' --������
	end
end


-- ��������� ��� �����
function rms()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g001ig0146' --�����
	elseif radn == 1 then
	return 'g001ig0150' --���
	elseif radn == 2 then
	return 'g001ig0147' --������.
	elseif radn == 3 then
	return 'g001ig0148' --���
	elseif radn == 4 then
	return 'g001ig0149' --������
	end
end

-- ��������� ������� ��� �����
function rmsb()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g001ig0277' --�����
	elseif radn == 1 then
	return 'g001ig0281' --���
	elseif radn == 2 then
	return 'g001ig0278' --������.
	elseif radn == 3 then
	return 'g001ig0279' --���
	elseif radn == 4 then
	return 'g001ig0280' --������
	end
end

-- ��������� ����� �� 15
function b15()
	local radn = math.random(0,3)
	if radn == 0 then
	return 'g000ig0002' --������
	elseif radn == 1 then
	return 'g000ig0014' --�����
	elseif radn == 2 then
	return 'g000ig0011' --���
	elseif radn == 3 then
	return 'g000ig0008' --��������
	end
end

-- ��������� ����� ���� �� ������
function w15()
	local radn = math.random(0,3)
	if radn == 0 then
	return 'g000ig0021' --������
	elseif radn == 1 then
	return 'g000ig0022' --����
	elseif radn == 2 then
	return 'g000ig0023' --�����
	elseif radn == 3 then
	return 'g000ig0024' --�����
	end
end
-- ��������� ����� ���� �� ����� � ���� �����
function d15()
	local radn = math.random(0,3)
	if radn == 0 then
	return 'g001ig0329' -- ������� ������ �� ����
	elseif radn == 1 then
	return 'g001ig0351' --������� ������ �� ����������
	elseif radn == 2 then
	return 'g001ig0343' --������� ������ �� ���������
	elseif radn == 3 then
	return 'g001ig0341' -- ������� ������ �� �������
	end
end

-- ��������� ������� 200 + ������ ����� (��-�� �1)
function e2()
	local radn = math.random(0,6)
	if radn == 0 then
	return 'g001ig0560' -- ����� ����������� 25�������
	elseif radn == 1 then
	return 'g001ig0547' -- ����� ����������� ������� +10����
	elseif radn == 2 then
	return 'g001ig0490' -- ����� ������������ +25��
	elseif radn == 3 then
	return 'g001ig0329' -- ������� ������ �� ����
	elseif radn == 4 then
	return 'g001ig0351' --������� ������ �� ����������
	elseif radn == 5 then
	return 'g002ig0007' -- ����� ���������� ������������ 250 (���� �����)
	elseif radn == 6 then
	return 'g002ig0005' -- ����� ���������������� 250 (15 �����)
	end
end

-- ��������� ������� 400-500 + ���.����
function e4()
	local radn = math.random(0,7)
	if radn == 0 then
	return 'g001ig0562' -- ����� �������� +20����
	elseif radn == 1 then
	return 'g001ig0491' -- ����� ��������� ����� +25����
	elseif radn == 2 then
	return 'g001ig0355' -- ����� ��������� ����� +��������
	elseif radn == 3 then
	return 'g001ig0127' -- ������� ��������� ���� +50������
	elseif radn == 4 then
	return 'g001ig0128' -- ������� ������ �� ������
	elseif radn == 5 then
	return 'g001ig0341' -- ������� ������ �� �������
	elseif radn == 6 then
	return 'g002ig0006' -- ����� ������������ 500 (30 �����)
	elseif radn == 7 then
	return 'g002ig0008' -- ������� �������� ���������� 500 (20�� +7���.��.�����)
	end
end

-- ��������� ����� ���� 500
function pw5()
	local radn = math.random(0,5)
	if radn == 0 then
	return 'g001ig0332' -- ����� ����� �������� ����-��
	elseif radn == 1 then
	return 'g001ig0328' -- ������� ������� ����� ����-�����
	elseif radn == 2 then
	return 'g001ig0330' -- ������� ���������� ����-����
	elseif radn == 3 then
	return 'g001ig0346' -- ������� ������������� ����-����������	
	elseif radn == 4 then
	return 'g001ig0344' -- ������� �������������� ����-����������	
	elseif radn == 5 then
	return 'g001ig0346' -- ������� ������������� ����-����������	
	end
end

-- ��������� ����� ���� 600
function pw6()
	local radn = math.random(0,7)
	if radn == 0 then
	return 'g001ig0354' -- ������ ������ ��� ����-����������
	elseif radn == 1 then
	return 'g001ig0320' -- ����� ���������� ������ ����-����
	elseif radn == 2 then
	return 'g001ig0325' -- ����� ������������ ����-�����
	elseif radn == 3 then
	return 'g001ig0326' -- ����� ��������� ����-������
	elseif radn == 4 then
	return 'g001ig0323' -- ����� ������� � �������� ����-�����	
	elseif radn == 5 then
	return 'g001ig0322' -- ����� �������� ����� ����-�����	
	elseif radn == 6 then
	return 'g001ig0321' -- ����� ���������� ��������� ����-������	
	elseif radn == 7 then
	return 'g001ig0352' -- ������� �������� ������� ����-�����������	
	end
end

-- ��������� �����-������� �� 5% �� 400
function p05()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g001ig0309' -- ������� ������ +5���
	elseif radn == 1 then
	return 'g001ig0313' -- ������� ����������������� +5����
	elseif radn == 2 then
	return 'g001ig0311' -- ������� ������������ +5��������
	elseif radn == 3 then
	return 'g001ig0315' -- ����� �������� +5��
	elseif radn == 4 then
	return 'g001ig0307' -- ����� ��������� +5�����
	end
end

-- ��������� �����-������� �� 10% +
function p10pl()
	local radn = math.random(0,6)
	if radn == 0 then
	return 'g000ig0013' -- ������� ������������ +10���
	elseif radn == 1 then
	return 'g000ig0016' -- ������� ���� +10����
	elseif radn == 2 then
	return 'g000ig0010' -- ������� �������������� +10��������
	elseif radn == 3 then
	return 'g000ig0004' -- ������� ��������� +10�����
	elseif radn == 4 then
	return 'g001ig0028' -- ���� ������������ 5%�� ��� 700
	elseif radn == 5 then
	return 'g001ig0034' -- ���� ��������� ���� 10�� ��� 400
	elseif radn == 6 then
	return 'g001ig0022' -- ���� �������� 10% �������� 600
	end
end


-- ��������� ����� �����
function lp6()
	local radn = math.random(0,6)
	if radn == 0 then
	return 'g001ig0525' -- ������� �������� (���������)
	elseif radn == 1 then
	return 'g001ig0528' -- ������� ���� (������)
	elseif radn == 2 then
	return 'g001ig0531' -- ����� ����� (������)
	elseif radn == 3 then
	return 'g001ig0527' -- ����� ���������� (��������)
	elseif radn == 4 then
	return 'g001ig0526' -- ����� ���������� (������)
	elseif radn == 5 then
	return 'g001ig0529' -- ������� ���������� ���� (�����)
	elseif radn == 6 then
	return 'g001ig0530' -- ����� ����������� ���� (������)
	end
end

-- ����� � �������
function spherex()
	local radn = math.random(0,5)
	if radn == 0 then
	return 'g001ig0462' -- ����� ������������� ���������� II 700
	elseif radn == 1 then
	return 'g001ig0059' -- ����� ������ �� ������ 800
	elseif radn == 2 then
	return 'g001ig0181' -- ����� ������ 800
	elseif radn == 3 then
	return 'g001ig0455' -- ����� �������� 700
	elseif radn == 4 then
	return 'g000ig9016' -- ����� �������� ��������� 700
	elseif radn == 5 then
	return 'g001ig0203' -- ����� ��������� ���������� II
	end
end

-- ��������� ������� ���300-400 ���300 �����200
function startitm()
	local radn = math.random(0,12)
	if radn == 0 then
	return 'g001ig0418' -- ���� ������ ������ (��������)
	elseif radn == 1 then
	return 'g000ig2001' -- ������ ������ (��������)
	elseif radn == 2 then
	return 'g001ig0611' -- ���� ������������ (��������)
	elseif radn == 3 then
	return 'g000ig3001' -- ������ ������ (��������)	
	elseif radn == 4 then
	return 'g001ig0100' -- ��� ���� (��������)
	elseif radn == 5 then
	return 'g002ig0001' -- �������� ������ (��������)
	elseif radn == 6 then
	return 'g001ig0108' -- ������ ������
	elseif radn == 7 then
	return 'g001ig0110' -- ������ ������
	elseif radn == 8 then
	return 'g001ig0105' -- �������� ������
	elseif radn == 9 then
	return 'g001ig0107' -- ������ ������
	elseif radn == 10 then
	return 'g001ig0109' -- ������ �����
	elseif radn == 11 then
	return 'g001ig0106' -- ������ ���������
	elseif radn == 12 then
	return 'g001ig0113' -- ����������� ������
	end
end

-- ������ �1 200
function wand1()
	local radn = math.random(0,6)
	if radn == 0 then
	return 'g001ig0395' -- ����� ���������� ������
	elseif radn == 1 then
	return 'g001ig0405' -- ����� ������������
	elseif radn == 2 then
	return 'g001ig0402' -- ����� ���������
	elseif radn == 3 then
	return 'g001ig0399' -- ����� �������
	elseif radn == 4 then
	return 'g000ig6003' -- ����� ��������
	elseif radn == 5 then
	return 'g001ig0394' -- ����� �������� �������
	elseif radn == 6 then
	return 'g000ig6012' -- ����� ��������
	end
end

-- ������ �2 400
function wand2()
	local radn = math.random(0,3)
	if radn == 0 then
	return 'g001ig0403' -- ����� ���������� ����
	elseif radn == 1 then
	return 'g001ig0404' -- ����� ��������
	elseif radn == 2 then
	return watorr('g001ig0386', 'g001ig0401') -- ����� ���� ������ (������������) / ����� ��������� �����
	elseif radn == 3 then
	return 'g001ig0392' -- ����� ������ ������
	end
end


-- ������� ���� 0
function item0()
	local radn = math.random(0,7)
	if radn == 0 then
	return 'g000ig6001' -- ����� �����
	elseif radn == 1 then
	return 'g001ig0387' -- ����� ���������
	elseif radn == 2 then
	return 'g000ig3008' -- ���� ������� (��������)
	elseif radn == 3 then
	return 'g000ig4008' -- ������� �����
	elseif radn == 4 then
	return 'g001ig0101' -- ����� ����
	elseif radn == 5 then
	return 'g001ig0130' -- ������� ����������� +20 �����
	elseif radn == 6 then
	return 'g001ig0323' -- ����� ������� � �������� +����.�����
	elseif radn == 7 then
	return 'g001ig0321' -- ����� ���������� ��������� +����.������
	end
end

-- ����� 1 (� ����� 1) ��� ������ ���500-650 / ���500-700
function ruin1()
	local radn = math.random(0,8)
	if radn == 0 then
	return 'g001ig0582' -- ������ ���� (��������)
	elseif radn == 1 then
	return 'g000ig3002' -- ����������� ���� (��������)
	elseif radn == 2 then
	return 'g001ig0487' -- ������ ������ ������� (��������)
	elseif radn == 3 then
	return 'g000ig3017' -- ������ ���������� (��������)
	elseif radn == 4 then
	return 'g001ig0182' -- ���������� ����� (��������)
	elseif radn == 5 then
	return 'g000ig2002' -- ������ ���� (��������)
	elseif radn == 6 then
	return 'g001ig0048' -- ������ ������� (��������)
	elseif radn == 7 then
	return 'g001ig0111' -- ������ ��������
	elseif radn == 8 then
	return 'g001ig0114' -- ������� ������
	end
end

-- ����� 2.1 (� ����� 2) ��� ������ ��� 600-800 +������
function ruin21()
	local radn = math.random(0,10)
	if radn == 0 then
	return 'g001ig0420' -- ������ ���� (��������)
	elseif radn == 1 then
	return 'g001ig0104' -- ��� ������� (��������)
	elseif radn == 2 then
	return 'g001ig0422' -- �������� ������ (��������)
	elseif radn == 3 then
	return 'g001ig0423' -- ���� ��������� (��������)
	elseif radn == 4 then
	return 'g001ig0427' -- ��������� ������ (��������)
	elseif radn == 5 then
	return 'g000ig2006' -- ����� ������� (��������)
	elseif radn == 6 then
	return 'g001ig0037' -- ���� ���������� (��������)
	elseif radn == 7 then
	return 'g001ig0602' -- ������ ����� (��������)
	elseif radn == 8 then
	return 'g002ig0002' -- ������������ �������� (��������)
	elseif radn == 9 then
	return 'g000ig8003' -- ������ �������� (������)
	elseif radn == 10 then
	return 'g001ig0606' -- ������ ������ ������ (������)
	end
end

-- ����� 2.2 (� ����� 2) ��� ������ ����� 500-700
function ruin22()
	local radn = math.random(0,9)
	if radn == 0 then
	return 'g001ig0293' -- ������ �����������
	elseif radn == 1 then
	return 'g001ig0361' -- ����� �����
	elseif radn == 2 then
	return 'g001ig0289' -- ����� ��������� �������
	elseif radn == 3 then
	return 'g001ig0357' -- ����� �����������
	elseif radn == 4 then
	return 'g001ig0365' -- ����� ��������
	elseif radn == 5 then
	return 'g001ig0292' -- ���� ������������
	elseif radn == 6 then
	return 'g001ig0370' -- ����� ������������ �����
	elseif radn == 7 then
	return 'g001ig0587' -- ����� �������
	elseif radn == 8 then
	return 'g001ig0369' -- ����� ������� �����
	elseif radn == 9 then
	return 'g001ig0373' -- ����� ����������� ����������
	end
end

-- ����� 3.1 (� ����� 3) ��� ������ �������� 850-1100 +������
function ruin31()
	local radn = math.random(0,8)
	if radn == 0 then
	return 'g001ig0424' -- ����� ������ (��������)
	elseif radn == 1 then
	return 'g001ig0425' -- ������ ���������������� (��������)
	elseif radn == 2 then
	return 'g001ig0429' -- ������� �� ����� ����� (��������)
	elseif radn == 3 then
	return 'g001ig0430' -- ���� ������ (��������)
	elseif radn == 4 then
	return 'g001ig0539' -- ������� ��� (��������)
	elseif radn == 5 then
	return 'g001ig0156' -- �������� ������������ (��������)
	elseif radn == 6 then
	return 'g001ig0419' -- ���� ������� (��������)
	elseif radn == 7 then
	return 'g001ig0115' -- �������� ������� (������)
	elseif radn == 8 then
	return 'g001ig0112' -- ������ ������ (������)
	end
end

-- ����� 3.2 (� ����� 3) ��� ������ ����� 850-1100
function ruin32()
	local radn = math.random(0,6)
	if radn == 0 then
	return 'g000ig1002' -- ����� ������������
	elseif radn == 1 then
	return 'g000ig1006' -- ����� ��������
	elseif radn == 2 then
	return 'g000ig1008' -- ����� �������
	elseif radn == 3 then
	return 'g000ig1004' -- ����� �����
	elseif radn == 4 then
	return 'g001ig0362' -- ����� �����
	elseif radn == 5 then
	return 'g001ig0364' -- ����� ����� �������
	elseif radn == 6 then
	return 'g001ig0374' -- ����� ��������� ���������
	end
end

-- ����� 3.3 (� ����� 3) ��� ������ �������� 900-1150 +�������
function ruin33()
	local radn = math.random(0,9)
	if radn == 0 then
	return 'g001ig0124' -- ������ ������������ (��������)
	elseif radn == 1 then
	return 'g001ig0042' -- ����� ������ (��������)
	elseif radn == 2 then
	return 'g001ig0612' -- ������ �������� ���� (��������)
	elseif radn == 3 then
	return 'g001ig0591' -- ��� ��������� (��������)
	elseif radn == 4 then
	return 'g001ig0071' -- ���������� ����� (��������)
	elseif radn == 5 then
	return 'g001ig0488' -- ������ ������������ ������ (��������)
	elseif radn == 6 then
	return 'g000ig3019' -- ������ �������� (��������)
	elseif radn == 7 then
	return 'g001ig0415' -- ���� ���� ������ (��������)
	elseif radn == 8 then
	return 'g001ig0603' -- ���� ����� (��������)
	elseif radn == 9 then
	return 'g000ig2007' -- ������ ������� (��������)
	end
end

-- ����� 1 ��� �������� 400-550
function merch1()
	local radn = math.random(0,9)
	if radn == 0 then
	return 'g001ig0421' -- ������ ����� (��������)
	elseif radn == 1 then
	return 'g000ig4002' -- ����� ����
	elseif radn == 2 then
	return 'g000ig4001' -- ����� �������
	elseif radn == 3 then
	return 'g000ig4003' -- ����� �����
	elseif radn == 4 then
	return 'g000ig4004' -- ����� ����
	elseif radn == 5 then
	return 'g001ig0428' -- ������� ���������� ������� (��������)
	elseif radn == 6 then
	return 'g000ig4007' -- ����������� �������
	elseif radn == 7 then
	return 'g001ig0099' -- �������� �������� (��������)
	elseif radn == 8 then
	return 'g000ig3020' -- ����� �������� (��������)
	elseif radn == 9 then
	return 'g001ig0426' -- ������ �������� (��������)
	end
end

-- ����� 1 ��� ����� 400
function merch1b()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g000ig1005' -- ����� ��������
	elseif radn == 1 then
	return 'g001ig0051' -- ����� ������������
	elseif radn == 2 then
	return 'g000ig1001' -- ����� ������
	elseif radn == 3 then
	return 'g000ig1007' -- ����� ����
	elseif radn == 4 then
	return 'g000ig1003' -- ����� ��������
	end
end

-- ����� 2 ��� ����� 700-850
function merch2()
	local radn = math.random(0,13)
	if radn == 0 then
	return 'g001ig0155' -- �������������� ������� (��������)
	elseif radn == 1 then
	return 'g001ig0045' -- ����� ������� (��������)
	elseif radn == 2 then
	return 'g000ig2003' -- ������ � ������� (��������)
	elseif radn == 3 then
	return 'g001ig0558' -- ��� ��������� (��������)
	elseif radn == 4 then
	return 'g001ig0557' -- ��� �������������� (��������)
	elseif radn == 5 then
	return 'g001ig0559' -- ���� ������������ ��� (��������)
	elseif radn == 6 then
	return 'g001ig0589' -- ��� ��������� (��������)
	elseif radn == 7 then
	return 'g001ig0594' -- ��� ������������� (��������)
	elseif radn == 8 then
	return 'g000ig3003' -- ������ ���� (��������)
	elseif radn == 9 then
	return 'g001ig0173' -- ���� �������� (��������)
	elseif radn == 10 then
	return 'g001ig0417' -- ���� �������� ������������ (��������)
	elseif radn == 11 then
	return 'g001ig0196' -- ������ ����� (��������)
	elseif radn == 12 then
	return 'g000ig9137' -- ������ ����� (��������)
	elseif radn == 13 then
	return 'g001ig0657' -- ����� ������ (��������)
	end
end

-- ������ ��������
function TalismanHome(race)
	sphmn = 'g000ig9101' -- �������� �������
	spdw = 'g001ig0265' -- �������� �������
	spun = 'g001ig0264' -- �������� ��������
	sphr = 'g001ig0267' -- �������� �������
	spelf = 'g001ig0266' -- �������� ������� �����
	
	if race == Race.Human then return sphmn
	elseif race == Race.Dwarf then return spdw
	elseif race == Race.Undead then return spun
	elseif race == Race.Heretic then return sphr
	elseif race == Race.Elf then return spelf
	end
end

-- ��������� �������
function rsub()
	local radn = math.random(0,4)
	if radn == 0 then
	return {Subrace.Human, Subrace.Neutral, Subrace.NeutralHuman, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf} --����
	elseif radn == 1 then
	return {Subrace.Elf, Subrace.Neutral, Subrace.NeutralElf, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf} --�����
	elseif radn == 2 then
	return {Subrace.Heretic, Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf} --������
	elseif radn == 3 then
	return {Subrace.Dwarf, Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf} --�����
	elseif radn == 4 then
	return {Subrace.Undead, Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf} --������
	end
end

-- ������� ������ �� ������ + ������
function NoUndead()
	local radn = math.random(0,3)
	if radn == 0 then
	return {Subrace.Human, Subrace.Neutral, Subrace.NeutralHuman, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf, Subrace.NeutralWater} --����
	elseif radn == 1 then
	return {Subrace.Elf, Subrace.Neutral, Subrace.NeutralElf, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf, Subrace.NeutralWater} --�����
	elseif radn == 2 then
	return {Subrace.Heretic, Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf, Subrace.NeutralWater} --������
	elseif radn == 3 then
	return {Subrace.Dwarf, Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralDragon, Subrace.NeutralMarsh, Subrace.NeutralBarbarian, Subrace.NeutralWolf, Subrace.NeutralWater} --�����
	end
end

-- ������� ���� 0
function BorCh0()
	if brz == 0 then
	return Border.Close -- ��������
	elseif brz == 1 then
	return Border.Close -- ��������
	elseif brz == 2 then
	return Border.Open -- ��������
	elseif brz == 3 then
	return Border.Water -- ������
	elseif brz == 4 then
	return orr(Border.Open, Border.Water) --��������/������
	elseif brz == 5 then
	return orr3(Border.Open, Border.Water, Border.Close) --��������/������/��������
	end
end

-- ������� ��� 1.1-1.2
function BorCh1()
	if brz == 0 then
	return Border.Open -- �������� (0 ��� ������ ���������)
	elseif brz == 1 then
	return Border.Open -- �������� (1 ��� ������ ���������)
	elseif brz == 2 then
	return Border.Open -- ��������
	elseif brz == 3 then
	return Border.Water -- ������
	elseif brz == 4 then
	return orr(Border.Open, Border.Water ) --��������/������
	elseif brz == 5 then
	return orr3(Border.Open, Border.Water, Border.Close) --��������/������/��������
	end
end

-- ������� ��� 2
function BorCh2()
	if brz == 0 then
	return orr3(Border.Open, Border.Water, Border.Close) --��������/������/��������
	elseif brz == 1 then
	return Border.Close -- ��������
	elseif brz == 2 then
	return Border.Open -- ��������
	elseif brz == 3 then
	return Border.Water -- ������
	elseif brz == 4 then
	return orr(Border.Open, Border.Water) --��������/������
	elseif brz == 5 then
	return orr3(Border.Open, Border.Water, Border.Close) --��������/������/��������
	end
end

-- ������� ���� 3
function BorCh3()
	if brz == 0 then
	return Border.Close -- ��������
	elseif brz == 1 then
	return Border.Close -- ��������
	elseif brz == 2 then
	return Border.Open -- ��������
	elseif brz == 3 then
	return Border.Water -- ������
	elseif brz == 4 then
	return orr(Border.Open, Border.Water) --��������/������
	elseif brz == 5 then
	return orr3(Border.Open, Border.Water, Border.Close) --��������/������/��������
	end
end


----------------------
-- ������ ���� ���� 0
---------------------

function z0Stacks12(itm) -- �����15
return {  
		subraceTypes = { Subrace.NeutralGreenSkin, Subrace.NeutralWolf },
		count = 1,
		value = { min = v01*kef, max = v01*kef*kr },
		loot = {
			items = {
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
				{ id = itm, min = 1, max = 1 },
			}
		}
}
end

function z0Stacks34(itm) -- ����15
return {  
		subraceTypes = { Subrace.NeutralGreenSkin, Subrace.NeutralWolf },
		count = 1,
		value = { min = v02*kef, max = v02*kef*kr },
		loot = {
			items = {
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
				{ id = itm, min = 1, max = 1 },
			}
		}
}
end

function z0Stacks5()  -- ������/������	
return {  
		subraceTypes = { Subrace.NeutralGreenSkin, Subrace.NeutralWolf },
		count = 1,
		value = { min = v03*kef, max = v03*kef*kr },
		loot = {
			items = {
				orr({ id = 'g000ig0005', min = 1, max = 1}, { id = 'g001ig0180', min = 2, max = 2}), -- ���50/2���25
				orr({ id = 'g001ig0125', min = 1, max = 1}, { id = 'g001ig0036', min = 1, max = 1}), -- ������/������				
			}
		}
}
end

function z0Stacks6() -- �����100
return {  
		subraceTypes = { Subrace.NeutralGreenSkin, Subrace.NeutralWolf, Subrace.NeutralMarsh },
		count = 1,
		value = { min = v04*kef, max = v04*kef*kr },
		loot = {
			itemTypes = { Item.Orb },
			value = { min = 100, max = 100 },
			itemValue = { min = 100, max = 100 },
			items = {
				{ id = 'g000ig0005', min = 1, max = 1}, -- ���50
			}
		}
}
end

function z0Stacks7() -- �����
return {  
		subraceTypes = { Subrace.NeutralGreenSkin, Subrace.NeutralWolf, Subrace.NeutralMarsh, Subrace.NeutralBarbarian },
		count = 1,
		value = { min = v05*kef, max = v05*kef*kr },
		loot = {
			items = {
				{ id = 'g001ig0378', min = 1, max = 1}, -- ���75			
				orr({ id = rmss(), min = 1, max = 1 }, { id = 'g001ig0431', min = 1, max = 1 }), --����.���.���/������75
			}
		}
}
end

function z0Stacks8() -- ���
return {  
		subraceTypes = { Subrace.NeutralElf, Subrace.Elf, Subrace.Dwarf, Subrace.Heretic, Subrace.Undead },
		count = 1,
		value = { min = v06*kef, max = v06*kef*kr },
		loot = {
			items = {
				{ id = 'g001ig0378', min = 1, max = 1}, -- ���75	
				orr({ id = rmss(), min = 1, max = 1 }, { id = 'g000ig7001', min = 1, max = 1 }), --����.���.���/������50
				orr({ id = item0(), min = 1, max = 1}, { id = wand1(), min = 1, max = 1}),
			}
		}
}
end

--------------
-- ������ ���� 1
--------------

function z1Stacks14(val, itm) -- =f.������01 �����15/����15
return {  
		subraceTypes = rsub(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			items = {
				{ id = 'g001ig0378', min = 1, max = 1}, -- ���75			
				{ id = itm, min = 1, max = 1 },
			}
		}
}
end

function z1Stacks5(val) -- =f.������01 �����
return {  
		subraceTypes = rsub(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			itemTypes = { Item.Orb },
			value = { min = 200, max = 200 },
			itemValue = { min = 200, max = 200 },
			items = {
				{ id = 'g001ig0378', min = 1, max = 1}, -- ���75			
			}
		}
}
end

function z1Stacks6(val) -- =f.������01 ������ 
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			itemTypes = { Item.Scroll },
			value = { min = 200, max = 200 },
			itemValue = { min = 200, max = 200 },
			items = {
				{ id = 'g001ig0378', min = 1, max = 1}, -- ���75			
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
			}
		}
}
end

function z1Stacks7(val) -- =f.������01 ���
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			items = {
				{ id = 'g000ig0001', min = 1, max = 1}, -- ���
				orr({ id = 'g000ig0005', min = 2, max = 2}, { id = 'g000ig0006', min = 1, max = 1}), -- ���50*2/���100
			}
		}
}
end

function z1Stacks8(val) -- =f.������01 �����
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			items = {
				orr3({ id = 'g000ig0005', min = 2, max = 2}, { id = 'g000ig0006', min = 1, max = 1}, { id = 'g000ig0001', min = 1, max = 1}), -- ���50*2/���100/���
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
				orr({ id = rms(), min = 1, max = 1 }, { id = 'g000ig7002', min = 1, max = 1 }), --����.���/������100				
			}
		}
}
end

function z1Stacks9() -- ���
return {  
		subraceTypes = { Subrace.NeutralElf, Subrace.Elf, Subrace.Dwarf, Subrace.Heretic },
		count = 1,
		value = { min = v16*kef, max = v16*kef*kr },
		loot = {
			items = {
				{ id = 'g001ig0378', min = 1, max = 1}, -- ���75			
				watorr({ id = 'g000ig5027', min = 1, max = 1}, { id = 'g000ig0001', min = 1, max = 1}), -- ����.������������/���
				orr({ id = rmss(), min = 1, max = 1 }, { id = 'g001ig0431', min = 1, max = 1 }), --����.���.���/������75
				-- �����400 / �����400 / ����� 400-550/ ������� ���������� +30 �����
				orr(orr({ id = merch1b(), min = 1, max = 1 }, { id = merch1b(), min = 1, max = 1 }), orr({ id = merch1(), min = 1, max = 1 }, { id = 'g001ig0376', min = 1, max = 1 })),
			}
		}
}
end

------------------
-- ������ ���� 2
------------------

function z2Stacks13(val, itm) -- =f.������12 �������200
return {  
		subraceTypes = rsub(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			items = {
				orr({ id = 'g000ig0005', min = 2, max = 2}, { id = 'g000ig0006', min = 1, max = 1}), -- ���50*2/���100
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
				{ id = itm, min = 1, max = 1 },
			}
		}
}
end

function z2Stacks4(val) -- =f.������12 �����200
return {  
		subraceTypes = rsub(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			itemTypes = { Item.Orb },
			value = { min = 400, max = 400 },
			itemValue = { min = 400, max = 400 },		
			items = {
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				{ id = 'g000ig0005', min = 1, max = 1}, -- ���50
			}
		}
}
end

function z2Stacks5(val) -- =f.������12 ������400
return {  
		subraceTypes = rsub(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			itemTypes = { Item.Scroll },
			value = { min = 400, max = 400 },
			itemValue = { min = 400, max = 400 },
			items = {
				{ id = 'g001ig0378', min = 2, max = 2}, -- ���75			
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
			}
		}
}
end

function z2Stacks6(val) -- =f.������12 ��� + ���/�����15
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			items = {
				{ id = 'g000ig0001', min = 1, max = 1}, -- ���
				orr({ id = 'g000ig0005', min = 2, max = 2}, { id = 'g000ig0006', min = 1, max = 1}), -- ���50*2/���100
				orr({ id = b15(), min = 1, max = 1}, { id = 'g000ig0005', min = 1, max = 1}), -- �����15/���50
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
			}
		}
}
end

function z2Stacks7(val) -- =f.������12 ����� + ��� ����/�������
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = val*kef, max = val*kef*kr },
		loot = {
			items = {
				orr({ id = 'g000ig0005', min = 2, max = 2}, { id = 'g000ig0006', min = 1, max = 1}), -- ���50*2/���100
				{ id = 'g000ig0005', min = 1, max = 1}, -- ���50
				orr({ id = 'g000ig0008', min = 1, max = 1}, { id = 'g000ig0005', min = 1, max = 1}), -- ��������15/���50
				orr({ id = rms(), min = 1, max = 1 }, { id = 'g001ig0432', min = 1, max = 1 }), --����.���/������� (�������������)125				
			}
		}
}
end

function z2Stacks8() --���
return {  
		subraceTypes = { Subrace.NeutralElf, Subrace.Elf, Subrace.Dwarf, Subrace.Heretic },
		count = 1,
		value = { min = v26*kef, max = v26*kef*kr },
		loot = {
			items = {
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				orr({ id = rms(), min = 1, max = 1 }, { id = 'g000ig7002', min = 1, max = 1 }), --����.���/������100
				-- ��� 700-850 / ���� ����������� +10 ����� ��� / �����5%
				orr3({ id = merch2(), min = 1, max = 1 }, { id = 'g001ig0026', min = 1, max = 1 }, { id = p05(), min = 1, max = 1 }),
			}
		}
}
end

--------------------
-- ������ ���� 3
--------------------

function z3Stacks14(itm) --�������400
return {  
		subraceTypes = rsub(),
		count = 1,
		value = { min = v31*kef, max = v31*kef*kr },
		loot = {
			items = {
				orr({ id = 'g000ig0005', min = 2, max = 2}, { id = 'g000ig0006', min = 1, max = 1}), -- ���50*2/���100
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				{ id = itm, min = 1, max = 1 },
			}
		}
}
end

function z3Stacks58(itm) --�����5
return {  
		subraceTypes = rsub(),
		count = 1,
		value = { min = v32*kef, max = v32*kef*kr },
		loot = {
			items = {
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				{ id = itm, min = 1, max = 1 },
			}
		}
}
end

function z3Stacks9() --�����
return {  
		subraceTypes = rsub(),
		count = 1,
		value = { min = v33*kef, max = v33*kef*kr },
		loot = {
			itemTypes = { Item.Orb },
			value = { min = 500, max = 600 },
			itemValue = { min = 500, max = 600 },				
			items = {
				{ id = 'g001ig0378', min = 2, max = 2}, -- ���75
				{ id = 'g000ig0005', min = 1, max = 1}, -- ���50
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
			}
		}
}
end

function z3Stacks10() --������
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = v34*kef, max = v34*kef*kr },
		loot = {
			itemTypes = { Item.Scroll },
			value = { min = 550, max = 550 },
			itemValue = { min = 550, max = 550 },
			items = {
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
			}
		}
}
end

function z3Stacks11() --��� + ���/�����15
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = v35*kef, max = v35*kef*kr },
		loot = {
			items = {
				{ id = 'g000ig0001', min = 1, max = 1}, -- ���
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				orr({ id = 'g000ig0005', min = 2, max = 2}, { id = 'g000ig0006', min = 1, max = 1}), -- ���50*2/���100
				orr({ id = b15(), min = 1, max = 1}, { id = 'g000ig0005', min = 1, max = 1}), -- �����15/���50
			}
		}
}
end

function z3Stacks12() --����� + ���� �����/���� ������/���
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = v36*kef, max = v36*kef*kr },
		loot = {
			items = {
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				orr3({ id = 'g001ig0125', min = 1, max = 1 }, { id = 'g001ig0036', min = 1, max = 1 }, { id = 'g001ig0378', min = 1, max = 1}), -- ���� �����/���� ������/���75	
				orr3({ id = rmsb(), min = 1, max = 1 }, { id = 'g001ig0486', min = 1, max = 1 }, { id = 'g000ig7003', min = 1, max = 1 }), --����.����.���/����� ��� ����������/������� (�������������) 150
			}
		}
}
end

function z3Stacks13() -- ���
return {  
		subraceTypes = { Subrace.NeutralElf, Subrace.Elf, Subrace.Dwarf, Subrace.Heretic },
		count = 1,
		value = { min = v37*kef, max = v37*kef*kr },
		loot = {
			items = {
				{ id = 'g000ig0001', min = 1, max = 1}, -- ���
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				{ id = 'g000ig0005', min = 1, max = 1}, -- ���50
				-- �����10 / ������� ���� ������ +20 ����� ��� / ���� ���� +5����.��� / ���� ����� +5�����.��� / ���� �������� +5���.���
				orr5({ id = p10pl(), min = 1, max = 1 }, { id = 'g001ig0018', min = 1, max = 1 }, { id = 'g001ig0029', min = 1, max = 1 }, { id = 'g001ig0027', min = 1, max = 1 }, { id = 'g001ig0030', min = 1, max = 1 }),
			}
		}
}
end
	
-------------------------

-- ������ ��������

function guard1n() -- � �������� 1
return { 
	subraceTypes = { Subrace.NeutralGreenSkin, Subrace.NeutralMarsh, Subrace.NeutralBarbarian},

	value = { min = v15*kef, max = v15*kef*kr },
	loot = {
		items = {
			orr({ id = 'g000ig0005', min = 2, max = 2}, { id = 'g000ig0006', min = 1, max = 1}), -- ���50*2/���100
			{ id = 'g001ig0180', min = 1, max = 1}, -- ���25
			orr3({ id = rmss(), min = 1, max = 1 }, { id = rmss(), min = 1, max = 1 }, { id = 'g000ig7001', min = 1, max = 1 }), --����.���.���/����.���.���/������50
			-- ������ ������ (��������) / ������ ������ (��������) / ����� ���������� / ������ ������|����������� ������ / ������ �1
			orr5({id = 'g000ig2001', min = 1, max = 1}, {id = 'g000ig3001', min = 1, max = 1}, {id = 'g001ig0497', min = 1, max = 1}, orr({id = 'g001ig0110', min = 1, max = 1}, { id = 'g001ig0113', min = 1, max = 1 }), { id = wand1(), min = 1, max = 1 }),
		},
	}
}
end

function guard2m() -- � ����� 2
return { 
	subraceTypes = { Subrace.NeutralGreenSkin, Subrace.NeutralMarsh, Subrace.NeutralBarbarian},

	value = { min = v25*kef, max = v25*kef*kr },
	loot = {
		items = {
			orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
			orr3({ id = b15(), min = 1, max = 1}, { id = w15(), min = 1, max = 1}, { id = 'g001ig0378', min = 1, max = 1}), -- �����15/����/���75
			orr3({ id = rmss(), min = 1, max = 1 }, { id = rmss(), min = 1, max = 1 }, { id = 'g001ig0431', min = 1, max = 1 }), --����.���.���/����.���.���/������75
			--  ���� ������ ������ (��������) / �������� ������ (��������) / ������ ��������|������� ������ / ����� ������� ������ (�����) | �������� �������������� 400 / �������� ������� ��������� II 450 / �������� ���� ������ 500
			orr5({id = 'g001ig0418', min = 1, max = 1}, {id = 'g002ig0001', min = 1, max = 1}, orr({id = 'g001ig0111', min = 1, max = 1}, {id = 'g001ig0114', min = 1, max = 1}), {id = 'g000ig4006', min = 1, max = 1}, orr3({ id = 'g001ig0184', min = 1, max = 1 }, { id = 'g000ig9109', min = 1, max = 1 }, { id = 'g000ig9120', min = 1, max = 1 })),
		},
	}
}
end

function guard3n() -- � �������� 3
return { 
	subraceTypes = { Subrace.NeutralGreenSkin, Subrace.NeutralMarsh, Subrace.NeutralBarbarian},

	value = { min = v35*kef, max = v35*kef*kr },
	loot = {
		items = {
			{ id = 'g000ig0001', min = 1, max = 1}, -- ���
			{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
			orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
			orr3({ id = b15(), min = 1, max = 1}, { id = w15(), min = 1, max = 1}, { id = 'g001ig0378', min = 1, max = 1}), -- �����15/����/���75
			orr3({ id = rms(), min = 1, max = 1 }, { id = rms(), min = 1, max = 1 }, { id = 'g000ig7002', min = 1, max = 1 }), --����.���/����.���/������100
			-- ������ ���� (��������) / ������ ���������� (��������) / ���������� ����� (��������) / ����� ���������� (��������) / ����� �����|����� ������|����� �������
			orr5({id = 'g000ig2002', min = 1, max = 1}, {id = 'g000ig3017', min = 1, max = 1}, {id = 'g001ig0182', min = 1, max = 1}, {id = 'g000ig3022', min = 1, max = 1}, orr3({id = 'g000ig6020', min = 1, max = 1}, {id = 'g000ig6014', min = 1, max = 1}, {id = 'g001ig0398', min = 1, max = 1})),
		},
	}
}
end

-------------------------
-- ������� 23

function guard31() -- ����� / ������ 500-550
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = v33*kef, max = v33*kef*kr },
		loot = {
			itemTypes = { Item.Orb, Item.Scroll },
			value = { min = 500, max = 600 },
			itemValue = { min = 500, max = 600 },
			items = {
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				orr3({ id = w15(), min = 1, max = 1}, { id = 'g001ig0351', min = 1, max = 1}, { id = 'g000ig0006', min = 1, max = 1}), -- ����/����-����������/���100		
			}
		}
}
end

function guard32() -- �����
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = v33*kef, max = v33*kef*kr },
		loot = {
			itemTypes = { Item.Valuable },
			value = { min = 500, max = 500 },
			itemValue = { min = 500, max = 500 },
			items = {
				orr({ id = 'g000ig0001', min = 1, max = 1 }, { id = 'g000ig0006', min = 1, max = 1 }), --���/���100
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
			}
		}
}
end

function guard33() -- ��� + �����.����/�����5 
return {  
		subraceTypes = NoUndead(),
		count = 1,
		value = { min = v33*kef, max = v33*kef*kr },
		loot = {
			items = {
				{ id = 'g000ig0001', min = 1, max = 1 }, --���
				{ id = rnd(pw5(), pw6(), p05(), wand2()), min = 1, max = 1 }, -- �����.���� 500 / �����.���� 600 / �����5 / �����400
				{ id = 'g000ig0006', min = 1, max = 1}, -- ���100
				{ id = 'g000ig0005', min = 1, max = 1}, -- ���50
			}
		}
}
end

-- ������ 03 ������
function guard03() -- ������ ������� + ����� + �����/������ 
return {  
		subraceTypes = { Subrace.NeutralDragon, Subrace.Human, Subrace.Heretic, Subrace.Dwarf, Subrace.Elf }, -- Subrace.Undead, �����
		count = 1,
		value = { min = vp03*kef, max = vp03*kef*kr },
		loot = {
			itemTypes = { Item.Armor, Item.Jewel, Item.Weapon, Item.Banner, Item.Talisman, Item.TravelItem },
			value = { min = 600, max = 700 },
			itemValue = { min = 600, max = 740 },
			items = {
				{ id = 'g000ig0001', min = 2, max = 2 }, --���
				{ id = 'g000ig0006', min = 2, max = 2 }, --���100
				{ id = p05(), min = 1, max = 1 }, -- �����5
				-- ����� 700-800 / ������ "����������"/������ "�����������"/������ "��������� ��������/������ "��������"/������ "�������������"
				orr({ id = spherex(), min = 1, max = 1 }, orr5({ id = 'g000ig5120', min = 1, max = 1 },{ id = 'g001ig0094', min = 1, max = 1 },{ id = 'g001ig0440', min = 1, max = 1 },{ id = 'g001ig0165', min = 1, max = 1 },{ id = 'g000ig5039', min = 1, max = 1 })),
			}
		}
}
end

----------------------

-- ������� �������

-- ������ ������� � ��������� ����� 0
function getPlayerZone0(zoneId, playerRace, zoneSize)
	return {
		id = zoneId,
		type = Zone.PlayerStart,
		race = playerRace,
		size = zoneSize,
		border = BorCh0(),
		mines = getMinesRespZ(playerRace),
		bags = bags0(),
--		ruins = zoneRuinRespZ0(),
		stacks = {	z0Stacks12(orr('g000ig0011','g000ig0002')), --���15/������15 
					z0Stacks12(orr('g000ig0014','g000ig0008')), --�����15/��������15
					z0Stacks34(orr('g000ig0021','g000ig0024')), --����/����
					z0Stacks34(orr('g000ig0022','g000ig0023')), --����/�����
					z0Stacks5(), z0Stacks6(), z0Stacks7(), z0Stacks8(),
		},

		capital = {
			garrison = { -- �������
				subraceTypes = { getPlayerSubRace(playerRace) },
				value = { min = 50, max = 50 }, 
				loot = {
					items = {
						{ id = 'g000ig0001', min = 6, max = 6}, -- ���
						{ id = 'g000ig0006', min = 6, max = 6}, -- ���100
						{ id = 'g001ig0378', min = 5, max = 5}, -- ���75
						{ id = 'g000ig0005', min = 5, max = 5}, -- ���50
						{ id = 'g001ig0180', min = 5, max = 5}, -- ���25
 
						{ id = b15(), min = 1, max = 1 },  -- ����. �����15
						orr({ id = 'g000ig0014', min = 1, max = 1 }, { id = 'g000ig0002', min = 1, max = 1 }), --�����15/������15
						orr({ id = 'g000ig0011', min = 1, max = 1 }, { id = 'g000ig0008', min = 1, max = 1 }), --���15/��������15
						{ id = 'g000ig0011', min = 1, max = 1 }, --���15
						{ id = 'g000ig0008', min = 2, max = 2 }, --��������15

						{ id = w15(), min = 1, max = 1 }, -- ����. ����
						orr({ id = 'g000ig0021', min = 1, max = 1 }, { id = 'g000ig0024', min = 1, max = 1 }), --����/����
						orr({ id = 'g000ig0022', min = 1, max = 1 }, { id = 'g000ig0023', min = 1, max = 1 }), --����/�����
						{ id = 'g000ig0024', min = 1, max = 1 }, --����
						{ id = 'g000ig0021', min = 1, max = 1 }, --����
						{ id = 'g000ig0022', min = 1, max = 1 }, --����
						
						{ id = 'g002ig0007', min = 1, max = 1 }, --����� ���������� ������������ 
						{ id = 'g002ig0005', min = 1, max = 1 },-- ����� ����������������
						rnd({ id = 'g002ig0005', min = 1, max = 1}, { id = 'g002ig0007', min = 1, max = 1}), -- ����� ���������������� / ����� ���������� ������������
						
						orr(orr({ id = 'g001ig0458', min = 1, max = 1}, { id = 'g000ig9031', min = 1, max = 1}), orr({ id = 'g000ig9022', min = 1, max = 1}, { id = 'g001ig0302', min = 1, max = 1})), -- 25 ����� ��������� ��������� / ����� ����� | ����� ����� / ����� ������
						orr(orr({ id = 'g001ig0189', min = 1, max = 1}, { id = 'g001ig0178', min = 1, max = 1}), orr({ id = 'g001ig0472', min = 1, max = 1}, { id = 'g001ig0473', min = 1, max = 1})), -- 50 ����� ����� / ����� ������ | ����� �������� ������� / ����� ������������ �������
												
						orr3(orr({id = 'g000ig9105', min = 1, max = 1}, {id = 'g000ig9131', min = 1, max = 1}), {id = TalismanHome(playerRace), min = 1, max = 1}, {id = TalismanHome(playerRace), min = 1, max = 1}), -- �������� ������ / �������� ����� | ������ ����� / ������ �����

						{ id = startitm(), min = 1, max = 1 }, --��������� �������

						--�����200
						{ id = wand1(), min = 1, max = 1 },				

						orr({ id = 'g000ig7003', min = 1, max = 1 }, { id = 'g001ig0486', min = 1, max = 1 }), -- �������150/����� ��� ����������50������
						{ id = ExtraManaProject4(playerRace), min = 1, max = 1 }, --���.���
						orr3({ id = rmss(), min = 1, max = 1 }, { id = 'g000ig7001', min = 1, max = 1 }, { id = 'g000ig7001', min = 1, max = 1 }), --����.���.���/������50/������50
					}
				},
			},
--			spells = {
--				CapSpell(playerRace)
--			}			
		}
	}
end

-- ������� ���� 1.1 =

function getPlayerZone11(zoneId, playerRace, zoneSize)
	return {
		id = zoneId,
		type = Zone.Junction,
		border = BorCh1(),
		race = playerRace,
		size = zoneSize,
		ruins = zoneRuinRespZ(),
		merchants = zoneMerch1(),
		bags = bags1(),
		mines = getMinesRespZ11(playerRace),
		mercenaries = zoneMercenZone1(playerRace),
		stacks = {
			z1Stacks14(v11, rnd('g000ig0011','g000ig0021','g002ig0007')), --���/������/����� ���������� ������������
			z1Stacks14(v11, rnd('g000ig0002','g000ig0024')), --������/�����
			z1Stacks14(v11, rnd('g000ig0014','g000ig0022','g002ig0007','g002ig0005')), --�����/����/����� ���������� ������������/����� ����������������
			z1Stacks14(v11, rnd('g000ig0008','g000ig0023')), --��������/�����
			z1Stacks5(v12), z1Stacks6(v13), z1Stacks7(v14), z1Stacks8(v15), z1Stacks9(),
		},
	}
end

-- ������� ���� 1.2 =
function getPlayerZone12(zoneId, playerRace, zoneSize)
	return {
		id = zoneId,
		type = Zone.Junction,
		border = BorCh1(),
		race = playerRace,
		size = zoneSize,
		ruins = zoneRuinRespZ(),
		merchants = zoneMerch1(),
		bags = bags1(),
		mines = getMinesRespZ12(playerRace),
		mercenaries = zoneMercenZone1(playerRace),
		stacks = {
			z1Stacks14(v11, rnd('g000ig0011','g000ig0021')), --���/������
			z1Stacks14(v11, rnd('g000ig0002','g000ig0024','g002ig0007')), --������/�����/����� ���������� ������������
			z1Stacks14(v11, rnd('g000ig0014','g000ig0022')), --�����/����
			z1Stacks14(v11, rnd('g000ig0008','g000ig0023','g002ig0007','g002ig0005')), --��������/�����/����� ���������� ������������/����� ����������������
			z1Stacks5(v12), z1Stacks6(v13), z1Stacks7(v14), z1Stacks8(v15), z1Stacks9(),
		},
	}
end


-- ������� ���� 2
function getTreasureZone2(zoneId, playerRace, playerRace2, zoneSizeTre)
	return {
		id = zoneId,
		race = playerRace,
		race2 = playerRace2,
		type = Zone.Junction,
		border = BorCh2(),
		bags = bags2(),
		size = zoneSizeTre,
		ruins = zoneRuinZone2(),
		merchants = zoneMerch2(),
		mines = getMinesZone2(playerRace, playerRace2),
		mages = zoneMageResp2(),		
		stacks = {
			z2Stacks13(v21, rnd('g001ig0560','g002ig0007')), --����� ����������� 25�������/����� ���������� ������������
			z2Stacks13(v21, rnd('g001ig0547','g002ig0005')), --����� ����������� ������� +10����/����� ����������������
			z2Stacks13(v21, rnd('g001ig0490','g002ig0007','g002ig0005')), --����� ������������ +25��/����� ���������� ������������/����� ����������������
			z2Stacks4(v22), z2Stacks5(v23), z2Stacks6(v24), z2Stacks7(v25), z2Stacks8(),
		},

--		towns = zoneTowns2(playerRace),
	}
end

-- ������� ���� 3
function getTreasureZone3(zoneId, playerRace, playerRace2, zoneSizeTre)
	return {
		id = zoneId,
		race = playerRace,
		race2 = playerRace2,
		type = Zone.Treasure,  -- Junction -- Treasure
		border = BorCh3(),
		size = zoneSizeTre,
		ruins = zoneRuinZone3(),
		merchants = zoneMerchZone3(),
		mercenaries = zoneMercenZone3(),
		bags = bags3(),
		mines = getMinesZone3(playerRace, playerRace2),
		stacks = { 
			z3Stacks14(rnd('g001ig0562','g002ig0006')), -- ����� �������� +20����/����� ������������
			z3Stacks14(rnd('g001ig0491','g002ig0008')), -- ����� ��������� ����� +25����/������� �������� ����������
			z3Stacks14('g001ig0355'), -- ����� ��������� ����� +��������
			z3Stacks14('g001ig0127'), -- ������� ��������� ���� +50������
			
			z3Stacks58('g001ig0309'), -- ������� ������ +5���
			z3Stacks58('g001ig0313'), -- ������� ����������������� +5����
			z3Stacks58('g001ig0311'), -- ������� ������������ +5��������
			z3Stacks58('g001ig0307'), -- ����� ��������� +5�����
			
			z3Stacks9(), z3Stacks10(), z3Stacks11(), z3Stacks12(), z3Stacks13(),
		},

--		towns = zoneTownsZone3(),
--		mages = zoneMage3(),		
--		trainers = {{}, {}},
	}
end

-------------------------------------------------


-- ������� ���: ������ ������� � ������

local z0 = 34 --3
local z1 = 40 --4
local z2 = 50 --5
local zc = 58 --6


function getZones(races)
	local zones = {}

	zones[1] = getPlayerZone0(0, races[1], z0) -- 
	zones[2] = getPlayerZone11(1, races[1], z1) -- 
	zones[3] = getPlayerZone12(2, races[1], z1) -- 

	zones[4] = getPlayerZone0(3, races[2], z0) -- 
	zones[5] = getPlayerZone12(5, races[2], z1) -- 
	zones[6] = getPlayerZone11(6, races[2], z1) -- 

	zones[7] = getTreasureZone2(7, races[1], races[2], z2) -- 
	zones[8] = getTreasureZone2(8, races[1], races[2], z2) -- 
	
	zones[9] = getTreasureZone3(4, races[1], races[2], zc) -- ������


	return zones
end

----------------------

-- �������: ������ ������� � ��������� ����� ������:
function getZoneConnections()

	return {

{from = 0, to = 1, guard = z1Stacks14(v13, orr3(b15(),w15(),e2()))},
{from = 0, to = 1, guard = z1Stacks5(v13)},
{from = 0, to = 1, guard = z1Stacks6(v13)},
{from = 0, to = 1, guard = z1Stacks7(v13)},
{from = 0, to = 1, guard = z1Stacks8(v13)},

{from = 0, to = 2, guard = z1Stacks14(v13, orr3(b15(),w15(),e2()))},
{from = 0, to = 2, guard = z1Stacks5(v13)},
{from = 0, to = 2, guard = z1Stacks6(v13)},
{from = 0, to = 2, guard = z1Stacks7(v13)},
{from = 0, to = 2, guard = z1Stacks8(v13)},
--
{from = 3, to = 5, guard = z1Stacks14(v13, orr3(b15(),w15(),e2()))},
{from = 3, to = 5, guard = z1Stacks5(v13)},
{from = 3, to = 5, guard = z1Stacks6(v13)},
{from = 3, to = 5, guard = z1Stacks7(v13)},
{from = 3, to = 5, guard = z1Stacks8(v13)},

{from = 3, to = 6, guard = z1Stacks14(v13, orr3(b15(),w15(),e2()))},
{from = 3, to = 6, guard = z1Stacks5(v13)},
{from = 3, to = 6, guard = z1Stacks6(v13)},
{from = 3, to = 6, guard = z1Stacks7(v13)},
{from = 3, to = 6, guard = z1Stacks8(v13)},
--
--
{from = 7, to = 1, guard = z2Stacks13(v23, e4())},
{from = 7, to = 1, guard = z2Stacks4(v23)},
{from = 7, to = 1, guard = z2Stacks5(v23)},
{from = 7, to = 1, guard = z2Stacks6(v23)},
{from = 7, to = 1, guard = z2Stacks7(v23)},

{from = 7, to = 5, guard = z2Stacks13(v23, e4())},
{from = 7, to = 5, guard = z2Stacks4(v23)},
{from = 7, to = 5, guard = z2Stacks5(v23)},
{from = 7, to = 5, guard = z2Stacks6(v23)},
{from = 7, to = 5, guard = z2Stacks7(v23)},
--
{from = 8, to = 2, guard = z2Stacks13(v23, e4())},
{from = 8, to = 2, guard = z2Stacks4(v23)},
{from = 8, to = 2, guard = z2Stacks5(v23)},
{from = 8, to = 2, guard = z2Stacks6(v23)},
{from = 8, to = 2, guard = z2Stacks7(v23)},

{from = 8, to = 6, guard = z2Stacks13(v23, e4())},
{from = 8, to = 6, guard = z2Stacks4(v23)},
{from = 8, to = 6, guard = z2Stacks5(v23)},
{from = 8, to = 6, guard = z2Stacks6(v23)},
{from = 8, to = 6, guard = z2Stacks7(v23)},
--
--
{from = 1, to = 4, guard = guard31()},
{from = 1, to = 4, guard = guard32()},
{from = 1, to = 4, guard = guard33()},
--
{from = 7, to = 4, guard = guard31()},
{from = 7, to = 4, guard = guard32()},
{from = 7, to = 4, guard = guard33()},

{from = 5, to = 4, guard = guard31()},
{from = 5, to = 4, guard = guard32()},
{from = 5, to = 4, guard = guard33()},
--
{from = 6, to = 4, guard = guard31()},
{from = 6, to = 4, guard = guard32()},
{from = 6, to = 4, guard = guard33()},

{from = 8, to = 4, guard = guard31()},
{from = 8, to = 4, guard = guard32()},
{from = 8, to = 4, guard = guard33()},
--
{from = 2, to = 4, guard = guard31()},
{from = 2, to = 4, guard = guard32()},
{from = 2, to = 4, guard = guard33()},
--
--
{from = 0, to = 4, guard = guard03()},
{from = 3, to = 4, guard = guard03()},

}
end

-- ������ �������� ����������� �������� ��� ���������� - ��
function getTemplateContents(races)
	local contents = {}
	
	contents.zones = getZones(races)
	contents.connections = getZoneConnections()

	return contents
end

-- �������� �������
function nametempl()
	local name0 = 'Ultimate 1.2b'
	if brz == 0 then nameplus = ' [0-close/corner_random]'
	elseif brz == 1 then nameplus = ' [1-close]'
	elseif brz == 2 then nameplus = ' [2-open]'
	elseif brz == 3 then nameplus = ' [3-water]'
	elseif brz == 4 then nameplus = ' [4-open|water]'
	elseif brz == 5 then nameplus = ' [5-random]'
	end
	return name0..nameplus
end	

-- ������
template = {
	name = 'Ultimate close 1.2b',
	description = '������ ��� ���� ��� ���-������.\n������ ���� � ������, �� ������ �������� ��� ��������� ����.\n������� ������: ����� ���� ������� ��������� ��� �������� ������.\n������� �� ���������! ����� ��������: 2200700846776804',
	minSize = 48,
	maxSize = 48,
	maxPlayers = 2,
	startingGold = 1100,
	startingNativeMana = 100,
	roads = 40,
	forest = 20,


--��������� ������
forbiddenUnits = {

-- �����������
-- ����������� �����-������ � �� ������ �����
'g000uu0021', --�������
'g000uu8248', --�������
'g000uu0020', --��������
'g000uu0019', --������ �� ������
'g000uu0022', --��������
'g000uu0023', --���
'g000uu5300', --���
'g000uu0044', --����������� �����
'g000uu0045', --�������
'g000uu0046', --������
'g000uu8249', --������
'g000uu0047', --����������
'g000uu0048', --���
'g000uu5301', --���
'g000uu0070', --������
'g000uu0071', --��������
'g000uu0072', --����������
'g000uu8250', --����������
'g000uu0073', --���������
'g000uu0074', --���
'g000uu5302', --���
'g000uu0096', --������ ������
'g000uu0097', --���������
'g000uu8252', --���������
'g000uu0098', --�������� �����
'g000uu8253', --�������� �����
'g000uu0099', --������
'g000uu0100', --���
'g000uu5303', --���
'g000uu8251', --������
'g000uu8010', --������
'g000uu8009', --������ ����
'g000uu8011', --����� ����
'g000uu8012', --������
'g000uu8013', --���
'g000uu5304', --���

-- ����������� �����-�������
'g001uu0021', --�������
'g001uu0020', --��������
'g001uu0019', --������ �� ������
'g001uu0022', --��������
'g001uu0023', --���
'g001uu0045', --�������
'g001uu0044', --����������� �����
'g001uu0046', --������
'g070uu0003', --������
'g001uu0047', --����������
'g001uu0048', --���
'g001uu0072', --����������
'g070uu0004', --����������
'g001uu0071', --��������
'g001uu0070', --������
'g001uu0073', --���������
'g001uu0074', --���
'g001uu0098', --�������� �����
'g070uu0001', --���������
'g001uu0097', --���������
'g001uu0096', --������ ������
'g001uu0099', --������
'g001uu0100', --���
'g001uu8010', --������
'g070uu0002', --������
'g001uu8009', --������ ����
'g001uu8011', --����� ����
'g001uu8012', --������
'g001uu8013', --���

-- ����������� �����������-������� � ������� ���-��� �����
'g000uu8185', -- ������� ������
'g001uu7598', -- ���������
'g001uu8242', -- X����� �����
'g000uu0164', -- ���������� ������

-- ����������� �������-������� � ������� ���-��� ����� 
'g000uu0017', -- ��������
'g000uu8035', -- ��������
'g002uu8039', -- �������
'g000uu7570', -- �������
'g000uu7569', -- �����
'g000uu8264', -- ������
'g000uu0151', -- ���������������
'g000uu0013', -- ���������
'g000uu8214', -- ���������
'g000uu8034', -- ��������� ����������
'g000uu0150', -- ��������
'g003uu8039', -- ����� �����
'g003uu8038', -- ��� ��������
'g000uu8235', -- ��������
'g000uu2002', -- ��������
'g003uu8037', -- ��������� �����

-- ����������� ������ � ������ �������������� 20%
'g000uu5236', -- ����
'g000uu5117', -- ������
'g000uu5101', -- ����������
'g000uu8308', -- ������� �������
'g000uu5130', -- ���������
'g000uu7556', -- ������-����
'g000uu7533', -- �����
'g000uu7510', -- ����� ��� �����
'g000uu7616', -- ���� ����� �����
'g000uu6004', -- ������� ��� �.
'g000uu5201', -- ������ �.
'g000uu7539', -- �������
'g000uu7592', -- ������
'g000uu7516', -- ��� ����� �.
'g000uu5262', -- ������� �.
'g000uu7614', -- �������� ��� �����
'g000uu7553', -- �������-�����

--��� ����������� ������� � ������� ���-��� ����� (������ � �������)
'g000uu8287', -- ��.������ �.
'g000uu8288', -- ��� �������� �.
'g000uu7519', -- ������� �.
'g000uu8215', -- ��������� �.
'g000uu8262', -- �������� �.
'g000uu8289', -- ����� ����� �
'g000uu7521', -- �������� �.
'g000uu5006', -- ������� ������
'g000uu8222', -- ����� �. �����
'g000uu8218', -- �����
'g000uu7544', -- ��������������
'g000uu8213', -- ������-�����
'g001uu8262', -- ��������
'g000uu2021', -- �����������
'g000uu6107', -- ������ ����-����
'g000uu7619', -- ����� ������
'g000uu8044', -- ������ ���� ���� �.

-----------���������� �������
'g000uu8266', -- �������--
'g000uu8265', -- ���� �������--
'g001uu0171', -- �������
'g000uu8217', -- ���������� ������ �.
'g000uu8216', -- ���������� ������
'g000uu8269', -- �������� ������ �.
'g001uu8269', -- �������� ������
'g000uu5022', -- ������ ������
'g000uu5122', -- ������ ������ �.
'g000uu8144', -- ������ ���� ���� �.
'g000uu2007', -- �����������
'g000uu2008', -- ����� ������

-- ���� ������+
'g000uu2022', -- �����
'g001uu8238', -- �������

},


--��������� ��������
forbiddenItems = {


-----------�����������
-- ��������
'g000ig6008', --����� �����������
'g000ig6017', --����� �������� �����
'g000ig6018', --����� �������
'g000ig5092', --������ "terra illudere"
'g000ig0019', --������� ��������������
'g000ig0020', --������� ����������
'g000ig0017', --������� ������������
'g001ig0126', --������� ����������
'g001ig0129', --����� ����������50
'g001ig0020', --������� ���� ����������
'g001ig0035', --������� ���� ��������� ����
'g000ig5051', --������ "sanctuera"
'g000ig5083', --������ "���� ���"
'g000ig5095', --������ "�������"
'g000ig8005', --����������� ������
'g000ig9006', --����� ����������
'g000ig9039', --����� �����
'g001ig0596', --�������

-- �������� �� �����/��� �����
'g000ig5032', --������ "����� ��������"
'g000ig5053', --������ "Paraseus"
'g000ig5094', --������ "������ ������"
'g000ig6004', --����� �����������
'g000ig6005', --����� �������
'g001ig0390', --����� �����
'g001ig0389', --����� ����������������
'g001ig0513', --����� �������� ����

-- �٨
'g001ig0575', --������ "����������� �����

-----------���������� �������
'g001ig0414', --����������� ������� ������ (��������)--
'g000ig3015', --�������� ���� (��������)--
'g000ig3016', --��� ������ (��������)--
'g001ig0154', --����� ����������--
'g001ig0158', --��������� ����� (��������)--
'g000ig3021', --������ �������� (��������)--
'g001ig0023', --���� ���������������--
'g001ig0017', --����� ���� �����--
'g000ig9007', --����� ��������--
'g000ig9040', --����� �����--
'g001ig0296', --����� ����������--
'g001ig0275', --����� �����������������--
'g000ig1011', --������ ������������
'g001ig0044', --������ ������ (��������)
--+
'g001ig0605', --����� ���������� (�� ������)
'g000ig3022', --����� ���������� (�������� �� �����)
'g001ig0597', --������ ��������� (��������) (���������)
--+ � ������� �� ������
'g001ig0348', --������� �������� ���������(�� ������)
'g001ig0321', --����� ���������� ���������
'g001ig0322', --����� �������� �����
'g001ig0323', --����� ������� � ��������
'g001ig0320', --����� ���������� ������
--+ � ������� �����
'g000ig1002', --����� ������������
'g000ig1006', --����� ��������
'g000ig1008', --����� �������

--���.�����
'g000ig3008', -- ���� ������� (������ ��)

--������
'g001ig0092', --������ "������� ����" �� 400 � ����� ����� ����
'g000ig5057', --������ "�erum Facies" ������ �� ��������� �� 700 � ����� ����� ����
'g000ig5118', --������ "����������" ��������� ����� ���������� �� 3 � ������� 5�5.
'g000ig5057', --������ "�erum Facies" ������ �� ���������.
'g000ig5107', --������ "�������� ����" (����� ���� �� 400)
'g000ig5047', --������ "Incantare Beliarh Illudere"
'g000ig5059', --������ "Incantare Avenger Illudere"

--������ �� ����
'g000ig5027', --������ ������������
'g000ig5006', --������ "���������"--
'g000ig5100', --������ "��������"--
'g000ig5113', --������ "�����"--
'g000ig5099', --������ "����������"--

--�������
'g000ig5031', -- ������ "������ II: ���������"
'g000ig5015', -- ������ "������ II: �����"
'g000ig5038', -- ������ "������ III: �������� ������"
'g000ig5071', -- ������ "������ III: ������"
'g000ig5108', -- ������ "������ III: ��� �������"
'g001ig0076', -- ������ "������ III: �������� ��������"
'g001ig0075', -- ������ "������ III: ������� ��������"
'g001ig0074', -- ������ "������ III: �������� ����"
'g001ig0077', -- ������ "������ III: �������� �������"
'g000ig5117', -- ������ "������ IV: �������"
'g001ig0078', -- ������ "������ IV: ��������� �����"
'g000ig5078', -- ������ "������ IV: �������"
'g001ig0080', -- ������ "������ V: ������� ������"
'g001ig0081', -- ������ "������ V: ������� �������"
'g001ig0079', -- ������ "������ V: ������� ����������"

--�3+
'g001ig0577', --������ "Dominatum ignis ������ ������������� � ���� � �����, � ���������� �������� �� �������������.
'g001ig0580', --������ "�������� ����� ������ ������������� � ������� � ��, � ���������� �������� �� �������������.
'g001ig0576', --������ "���� � ����� ������ ������������� � ������, ���������� � �����������, ���������� �������� �� �������������.
'g001ig0578', --������ "����������� ����� ������ ������������� ���� � ������, � ���������� �������� �� �������������.
'g001ig0579', --������ "����� ������ ������������� � ����� ����� � ���, � ���������� �������� �� �������������.
'g000ig5096', --������ "������������� �������" +35��������

--������ �� ���� �3+
'g000ig5054', --Menta potens
'g000ig5109', --���������� ������
'g000ig5033', --����
'g000ig5014', --���� �����
'g000ig5072', --������ "�������� �����"

--������ �� ���� �4+
'g000ig5090', --Potentia Ignis
'g000ig5056', --Sinestra ignis
'g000ig5086', --���� ����
'g000ig5112', --������
'g000ig5077', --�������� �������
'g000ig5093', --����� ������
'g000ig5105', --���������
'g000ig5081', --���� ������
'g000ig5060', --Deus talonis
'g000ig5019', --����������
'g000ig5080', --�����������

},
	
	getContents = getTemplateContents
}
Include("\\script\\skill\\head.lua")
SKILLS =  
{
	spider_web={--����֩����
		frozen_action={
			[1]={{1,1},{20,1}},
			[2]={{1,18},{20,18}},
			[3]={{1,1},{20,1}}
		},
	},
	
	defence={ --���ַ���
		allres_p={--ȫ�������п���
			[1]={{1,70},{20,70}},
			[2]={{1,18},{20,18}},
		},
	},
	
	mianyiyun={ --����ѣ��
		stuntimereduce_p={--����ѣ��ʱ��
			[1]={{1,140},{20,140}},
			[2]={{1,-1},{20,-1}},
		},
		ignorenegativestate_p={--���Ը���״̬
			[1]={{1,70},{20,70}},
			[2]={{1,-1},{20,-1}},
		},
	},
	
	eightline={ --�ؿ�8���Լ���
		fatallystrike_p={ --��������һ��
			[1]={{1,70},{20,70}},
		},
		attackrating_p={ --����������
			[1]={{1,240},{20,240}},
		},
		ignoredefense_p={ --���Ե������ܵļ���
			{{1,70},{20,70}},
		},
		colddamage_v={ --����
			[1]={{1,19000},{20,19000}},
			[3]={{1,2900},{20,2900}},
		},
	},
}
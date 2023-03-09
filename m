Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01olkn2059.outbound.protection.outlook.com [40.92.98.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3708944D
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 11:55:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KqNO5tmVGv4J29cMiMeDvg7Rc8Lpe0clU6XokEC9IMxwVgQhRmN4iuE4AVvEXLQ5j2VkGQyWXXQahTnep96I6wdaqQXr2XzASB77WL9SzEgCCS6cRRWuHF8CVcNwnatDaun/fg1LnGwM4pBwAjXYvg3FZV+SVdUG2M1k1Nz5HhCiDdrmTpGVclzQp8fZdniQkiEpQK1LH+C1H5xnKGXZuJDCDSBkv/X/0YER+WfyihKKtLzj0UfskRg7p8F1dRwnwwpEQJYl1jTtfIc1nNElCtjytl8f5ozdkXpWiVwcIeFwIVBk4jfFsaj3ftji+6zIsUZu4nsCqiVvrFEvf/fj6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z7hhE/t1Xty5+ti7LohK0PjlQ6L/7XhrzlwwpWGxdBk=;
 b=DwezcAKY4vIpCeopXlXEXC+cQqyBTdL8595y/s2aVUP1CqLnaRoXZV3pd+gme/IYXUDtwirvaotRd7T4UkzZo2LZ041Y+SgpBX9tYGspFmbyqifqvKB50RKqOFEtNKYmpsuQRTz0VldCYCL9CrwqYpGBk9kMiuIIZwIlCpEGGQ4G8kuEqNRKCjr808+1cyos4aF1QwsiKYM+Thg4s458dGJYvU2mGX+zhGv0gtWyyLdfVWLC/V6le5KZOJzHaJRn+/yYur9EvSdVA7MCKuETmwcgpUBLsSkYlvwsHFNw6UYdX4XpdI+rVANhWOqWAF1yECfcfndskmjBmEw7P4XPYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z7hhE/t1Xty5+ti7LohK0PjlQ6L/7XhrzlwwpWGxdBk=;
 b=FNCFPSCtoDI9R0tbQ9u6m+C/c3JyEh3vEIn6NQbj03mQO03HzY8S/pzJuCQo4CR2pL+2CKaDqjmx2ZO9lwCI1MXOIkzQFOUAWuSrizgvAcqw3Xf5BQedmbIH0cENV0kDBkARi3pZ7YU1NzdTvquW3AP8ja+sQzmBdVKMcHQ+bPbaah2/KUmfvXqkuTLGeIqvbsSB1WyxmRmGfVnHdzhxuCyZzgcDOfbMPURfRVSTpvR2/x9PAVh0rGm++wuM+zPdX20o6m56g+NcwPsPnDWk2SESdTWlVJJ/Hkk0eAUx9X7JQ/BNHENO+H7skg2S8hrLGZX3ywF4VS15fIkm5hRGHA==
Received: from TYCP286MB3005.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:301::9)
 by TYCP286MB2575.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:242::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.18; Thu, 9 Mar
 2023 11:55:19 +0000
Received: from TYCP286MB3005.JPNP286.PROD.OUTLOOK.COM
 ([fe80::651e:da9:2bc0:78cb]) by TYCP286MB3005.JPNP286.PROD.OUTLOOK.COM
 ([fe80::651e:da9:2bc0:78cb%7]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 11:55:19 +0000
From: Deepak Varma <dvarma04@hotmail.com>
To: Mercy Chelangat Ruto <rutomercy430@gmail.com>
CC: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Fw: INQUIRY ABOUT THE PROJECT CONTRIBUTION
Thread-Topic: INQUIRY ABOUT THE PROJECT CONTRIBUTION
Thread-Index: AQHZUm+spbuAcNQQCUa1T0/lCdMJma7yVkVF
Date: Thu, 9 Mar 2023 11:55:19 +0000
Message-ID:
 <TYCP286MB30052490692A5818CFBE9B77C6B59@TYCP286MB3005.JPNP286.PROD.OUTLOOK.COM>
References:
 <CAJY+E18tm1iEs8jAh5uN_ZTOjH9RwLaNuRu_pej0HrW+OB8Kwg@mail.gmail.com>
In-Reply-To:
 <CAJY+E18tm1iEs8jAh5uN_ZTOjH9RwLaNuRu_pej0HrW+OB8Kwg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [x9fRuqePMUSnsHoZSeMsu60T3OQOfIPnKSNVZPAcBSFyEqYVr5kE2Smt+oEHJtoY]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYCP286MB3005:EE_|TYCP286MB2575:EE_
x-ms-office365-filtering-correlation-id: 7fcdc6cc-ea5d-4671-a1cf-08db209527a8
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 lfJQvpfYTkwrZnAIlIJqSGKlm0mbjHpc6cucTZjsblgT26zcB7kzzpLNdecHQploRb8RrzIcEiZhQDfiSEf/8Ky9uaZYfGslRUIqw6+NEXtdfqh8vmnlwn5k8lJgxhvLbwzmLqpbUI60Cd5aIOHwap4xBgdqosH85i9+dYrv+9JcdR02RSrQCEXjxknC1bST1pniMEX4zeyozfg0JRzvMB9cnH6GQVgGqLByqzc0e6s7Ym8/TO5dqi94JL2/Ki6T8OOlaq6ndL+YuLbktziE+H37oC+EC6Yy/t4UzlG/QRmlE9lb2BlDhCmZPg1IiJrkNdygo+Kjd0sR1BuV513ZfDnXc12esXQyXcvrhdMukRfPPTwRraIcuVJMGTyDINihxsGjGB9Et21ZhsCTBAO2WUj/n5DEIan4EVvip6nMPePWmlB0qbBV2OwjS+WbtLcNQodLRmXu/BQbmzcaQz8rsOKWTiaGishxkaQER59qm73i2Oij3p9CsDTFw/OIy8SPhi6hlvK5EIxoeavtv2WBu+ApQNsgskrE9JaQt3Rnwkttz7aYjshdnldxyX5SSw5a4GPQt4OHuqKtCEtm9cWuZQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?ahXLkyKQ9vJmL/mJKw+MoRuU0/vQreH7hIfn+p7UsyUDCZDmjSVb6eD2Fl?=
 =?iso-8859-1?Q?0JE0LmySh2c9I+QeG1j2IuUcBk+UuQYEEs+bjs2mgYuaPGyRMggSM0FXkN?=
 =?iso-8859-1?Q?dotzougjYhALuzz+PNrA2f+O0+EBKFd4Js/FOWM9DuehUPoa05yoxaWCc7?=
 =?iso-8859-1?Q?PuDBXy28zwT507IT5OS8tcppCgjGT9q3St42gSo7n/OzYH9gCPAOYHeA7D?=
 =?iso-8859-1?Q?cQiyEio2+mpHdZKx9WLi4DAjDiUC9eMhNWCzsCqrTfvaabee4lTAngM75o?=
 =?iso-8859-1?Q?Vxi4r/d8oGZihm/p6VcR5OJRdCOP2JWlZ4s1Q7tH/oMCWEl3qJTMHSLDn1?=
 =?iso-8859-1?Q?WusCUM5OMhT+eqTzLJtygGCcwqIaFqjqf9r/CFkeuDYU0wNuRRsmvKRtpE?=
 =?iso-8859-1?Q?wS/At42zY37t+QWqoecUfjSg6O4SUVuZqxT2FsP6X/mm1RZAvT7e8Q6iIh?=
 =?iso-8859-1?Q?/mNxYEMED38XiubsRsAHANVMuWF434S8JLux7Sh5yl9TmKLkORXEWf9c6l?=
 =?iso-8859-1?Q?K+2X9h3L5a1Qa3Gfs4Yx4h2/l8v9TiCsuS8zaGUfhqllnpmPRYD5XhKLUi?=
 =?iso-8859-1?Q?V0ECEVv85jXG8NUuHG0m7NRkwrX9/v+i7CL4VmM4FxJ+5zNRX4gHsmUxHq?=
 =?iso-8859-1?Q?ybv/MIVPQtDdEg0KTO9QiYNP0JU4sIAC+H+4lW/xkSdKn6kuDo0jIoGLhA?=
 =?iso-8859-1?Q?ZzQ6t9x5Dp0o87g0uENTI/iKoilv/CrC0yY91Spfi7wX0hSozZcNQeRFFl?=
 =?iso-8859-1?Q?11vymFrpeotazYkegAyrHKX36kFc6UyAJZ+9kENqNqzgW036VfILxozE4g?=
 =?iso-8859-1?Q?IULXV0Cajn0+XIpFnWNRmQR4tdTHDMq5yFWWo4LThOjsG/bR60LsiHxCZy?=
 =?iso-8859-1?Q?GvKnJoNquPRh19sHxVmMZ7/Vw9dZhJbhgr8PxZu8tqMALDgKofvWWRZtzU?=
 =?iso-8859-1?Q?6bQKrvFI4AGlyGDGbj2yZJr22O+AcwbcS8Ho6LDw71JV6HKPYcGiuZ03co?=
 =?iso-8859-1?Q?ZjPvmnuvq2mlk9zuQfKHAxScoH2CqhlUD8J11DlKeI1o+vijJtqk/zdP1W?=
 =?iso-8859-1?Q?hi0BNXNc13iyoTb6AlW8Sj5rVorOCTdMHExd6OT60SXDlubHVnoa6B8moR?=
 =?iso-8859-1?Q?o4rf2Ucl67v7rKvSTml3aVmaGcuR4n0nef4xV2PS6YtLZdva2cT3Shj8vp?=
 =?iso-8859-1?Q?nW8Ir62wzKjIgRH3Zu1K1nqSSzGirpd3EGXs31MezRc8mDVGs7B5xyG4du?=
 =?iso-8859-1?Q?YGv5VdzzegxrsTye2eHeZ7qoU8lNcr1ufJYT2ctOGboKZnvNU6M7CUZCYl?=
 =?iso-8859-1?Q?jDWw+9sFZvU85ReVqI70AvUGkGTENMSPodygxxP8UNdhJplqt8solRHGNx?=
 =?iso-8859-1?Q?GfPdSvjK28?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-05f45.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCP286MB3005.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fcdc6cc-ea5d-4671-a1cf-08db209527a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 11:55:19.0167
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCP286MB2575

Resending in plain text since the mailing list did not accept original HTML=
 format.=0A=
=0A=
Hello Mercy,=0A=
Welcome to Outreachy! Glad to know that you are interested in Linux Kernel =
Community projects.=0A=
=0A=
You can find most of the information in the following email sent earlier:=
=0A=
https://lore.kernel.org/outreachy/ZAJV2shFMkTMdJtQ@aschofie-mobl2/=0A=
=0A=
Make sure you subscribe to the outreachy@lists.linux.dev mailing list and a=
lways cc the mailing list for quicker responses.=0A=
Also, your emails should be sent in plain text always.=0A=
=0A=
All the best.=0A=
=0A=
Deepak.=0A=
=0A=
=0A=
From: Mercy Chelangat Ruto <rutomercy430@gmail.com>=0A=
Sent: Thursday, March 9, 2023 2:34 PM=0A=
To: dvarma04@hotmail.com <dvarma04@hotmail.com>=0A=
Subject: INQUIRY ABOUT THE PROJECT CONTRIBUTION =0A=
=A0=0A=
Hi, my name is Mercy from Kenya and an Outreachy intern to be. I would like=
 to make an inquiry about how to make a contribution to the project on Anal=
yzing Linex Security Subsystem. I will be glad to hear from you and am look=
ing forward to your guidance. Thank you.=A0=

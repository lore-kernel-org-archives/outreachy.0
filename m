X-GM-THRID: 6254955929257639936
Date: Fri, 26 Feb 2016 01:25:54 -0800 (PST)
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <e68da6de-9ef8-485b-b504-4a5aba63e846@googlegroups.com>
In-Reply-To: <20160226091133.GA9015@Karyakshetra>
References: <20160226091133.GA9015@Karyakshetra>
Subject: Re: [PATCH v3 0/8] Remove useless return variables
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_579_991676333.1456478754544"
X-Google-Token: EKK0wLYF6SJ8lqpfmUM0
X-Google-IP: 14.139.82.6

------=_Part_579_991676333.1456478754544
Content-Type: multipart/alternative; 
	boundary="----=_Part_580_1633533531.1456478754544"

------=_Part_580_1633533531.1456478754544
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Please ignore v3. Some patches have already been applied. Hence, sending in 
v4 with
with only the relevant patches.

Thanks,
Bhaktipriya

On Friday, February 26, 2016 at 2:40:58 PM UTC+5:30, Bhaktipriya Shridhar 
wrote:
>
> This patch-set removes unnecessary return variables and compresses the 
> return logic. 
>
> Bhaktipriya Shridhar (8): 
>   staging: rdma: hfi1: Remove useless return variables 
>   staging: android: ion: hisilicon: Remove useless return variables 
>   staging: unisys: visorbus: Remove useless return variables 
>   staging: rtl8188eu: os_dep: Remove useless return variables 
>   staging: rtl8188eu: core: Remove useless return variables 
>   staging: wilc1000: Remove useless return variables 
>   staging: rtl8723au: hal: Remove useless return variables 
>   staging: lustre: ptlrpc: Remove useless return variables 
>
>  drivers/staging/android/ion/hisilicon/hi6220_ion.c  |  5 +---- 
>  drivers/staging/lustre/lustre/ptlrpc/client.c       |  5 +---- 
>  drivers/staging/rdma/hfi1/chip.c                    |  5 +---- 
>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c        |  4 +--- 
>  drivers/staging/rtl8188eu/os_dep/osdep_service.c    |  5 +---- 
>  drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 16 +++------------- 
>  drivers/staging/unisys/visorbus/visorbus_main.c     |  4 +--- 
>  drivers/staging/wilc1000/wilc_wlan.c                |  6 +----- 
>  8 files changed, 10 insertions(+), 40 deletions(-) 
>
> -- 
> 2.1.4 
>
>
------=_Part_580_1633533531.1456478754544
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please ignore v3. Some patches have already been applied. =
Hence, sending in v4 with<br>with only the relevant patches.<br><br>Thanks,=
<br>Bhaktipriya<br><br>On Friday, February 26, 2016 at 2:40:58 PM UTC+5:30,=
 Bhaktipriya Shridhar wrote:<blockquote class=3D"gmail_quote" style=3D"marg=
in: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Th=
is patch-set removes unnecessary return variables and compresses the
<br>return logic.
<br>
<br>Bhaktipriya Shridhar (8):
<br>=C2=A0 staging: rdma: hfi1: Remove useless return variables
<br>=C2=A0 staging: android: ion: hisilicon: Remove useless return variable=
s
<br>=C2=A0 staging: unisys: visorbus: Remove useless return variables
<br>=C2=A0 staging: rtl8188eu: os_dep: Remove useless return variables
<br>=C2=A0 staging: rtl8188eu: core: Remove useless return variables
<br>=C2=A0 staging: wilc1000: Remove useless return variables
<br>=C2=A0 staging: rtl8723au: hal: Remove useless return variables
<br>=C2=A0 staging: lustre: ptlrpc: Remove useless return variables
<br>
<br>=C2=A0drivers/staging/android/ion/<wbr>hisilicon/hi6220_ion.c =C2=A0| =
=C2=A05 +----
<br>=C2=A0drivers/staging/lustre/<wbr>lustre/ptlrpc/client.c =C2=A0 =C2=A0 =
=C2=A0 | =C2=A05 +----
<br>=C2=A0drivers/staging/rdma/hfi1/<wbr>chip.c =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A05 +----
<br>=C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_sta_mgt.c =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| =C2=A04 +---
<br>=C2=A0drivers/staging/rtl8188eu/os_<wbr>dep/osdep_service.c =C2=A0 =C2=
=A0| =C2=A05 +----
<br>=C2=A0drivers/staging/rtl8723au/<wbr>hal/rtl8723a_bt-coexist.c | 16 +++=
-------------
<br>=C2=A0drivers/staging/unisys/<wbr>visorbus/visorbus_main.c =C2=A0 =C2=
=A0 | =C2=A04 +---
<br>=C2=A0drivers/staging/wilc1000/<wbr>wilc_wlan.c =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A06 +-----
<br>=C2=A08 files changed, 10 insertions(+), 40 deletions(-)
<br>
<br>--
<br>2.1.4
<br>
<br></blockquote></div>
------=_Part_580_1633533531.1456478754544--

------=_Part_579_991676333.1456478754544--


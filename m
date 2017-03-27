X-GM-THRID: 6401819323480932352
Date: Mon, 27 Mar 2017 12:15:05 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: mawilcox@microsoft.com, gs051095@gmail.com
Message-Id: <2eae3108-cb1e-4a6b-adee-c30cfb6cc610@googlegroups.com>
In-Reply-To: <24c07b87-b37f-44a2-afcb-f6310b6630fb@googlegroups.com>
References: <cover.1490539466.git.gs051095@gmail.com>
 <cover.1490539466.git.gs051095@gmail.com>
 <38ecc07b35b00ee00b4c90f11e1dd17bffe26d36.1490539466.git.gs051095@gmail.com>
 <24c07b87-b37f-44a2-afcb-f6310b6630fb@googlegroups.com>
Subject: Re: [PATCH 2/3] kernel: pid_namespace: Fix line over 80 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4611_1458034178.1490642105257"
X-Google-Token: ELnJ5cYFnKea4N6i4Yk0
X-Google-IP: 14.139.82.6

------=_Part_4611_1458034178.1490642105257
Content-Type: multipart/alternative; 
	boundary="----=_Part_4612_620864661.1490642105257"

------=_Part_4612_620864661.1490642105257
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 28, 2017 at 12:42:53 AM UTC+5:30, Arushi Singhal wrote:
>
>
>
> On Sunday, March 26, 2017 at 8:18:57 PM UTC+5:30, Gargi Sharma wrote:
>>
>> Line over 80 characters are split to fix the following checkpatch 
>> issue: 
>> WARNING: line over 80 characters 
>>
>> Signed-off-by: Gargi Sharma <gs05...@gmail.com> 
>> --- 
>>  kernel/pid_namespace.c | 5 +++-- 
>>  1 file changed, 3 insertions(+), 2 deletions(-) 
>>
>> diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c 
>> index 6ace1e3..18f5385 100644 
>> --- a/kernel/pid_namespace.c 
>> +++ b/kernel/pid_namespace.c 
>> @@ -92,8 +92,9 @@ static void dec_pid_namespaces(struct ucounts *ucounts) 
>>          dec_ucount(ucounts, UCOUNT_PID_NAMESPACES); 
>>  } 
>>   
>> -static struct pid_namespace *create_pid_namespace(struct user_namespace 
>> *user_ns, 
>> -        struct pid_namespace *parent_pid_ns) 
>>
> Hi Gargi
> I think I have already made this change
>  Thanks
> Arushi
>
Sorry
My bad I have done the similar patch but not on same.
Thanks
Arushi 

> +static struct 
>> +pid_namespace *create_pid_namespace(struct user_namespace *user_ns, 
>> +                                    struct pid_namespace *parent_pid_ns) 
>>  { 
>>          struct pid_namespace *ns; 
>>          unsigned int level = parent_pid_ns->level + 1; 
>> -- 
>> 2.7.4 
>>
>>
------=_Part_4612_620864661.1490642105257
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 28, 2017 at 12:42:53 AM UTC+5:30=
, Arushi Singhal wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div di=
r=3D"ltr"><br><br>On Sunday, March 26, 2017 at 8:18:57 PM UTC+5:30, Gargi S=
harma wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left=
:0.8ex;border-left:1px #ccc solid;padding-left:1ex">Line over 80 characters=
 are split to fix the following checkpatch
<br>issue:
<br>WARNING: line over 80 characters
<br>
<br>Signed-off-by: Gargi Sharma &lt;<a rel=3D"nofollow">gs05...@gmail.com</=
a>&gt;
<br>---
<br>=C2=A0kernel/pid_namespace.c | 5 +++--
<br>=C2=A01 file changed, 3 insertions(+), 2 deletions(-)
<br>
<br>diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
<br>index 6ace1e3..18f5385 100644
<br>--- a/kernel/pid_namespace.c
<br>+++ b/kernel/pid_namespace.c
<br>@@ -92,8 +92,9 @@ static void dec_pid_namespaces(struct ucounts *ucount=
s)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dec_ucount(ucount=
s, UCOUNT_PID_NAMESPACES);
<br>=C2=A0}
<br>=C2=A0
<br>-static struct pid_namespace *create_pid_namespace(struct user_namespac=
e *user_ns,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pid_namespace *=
parent_pid_ns)
<br></blockquote><div>Hi Gargi<br>I think I have already made this change<b=
r>=C2=A0Thanks<br>Arushi<br></div></div></blockquote><div>Sorry<br>My bad I=
 have done the similar patch but not on same.<br>Thanks<br>Arushi <br></div=
><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bo=
rder-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"><div></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border=
-left:1px #ccc solid;padding-left:1ex">+static struct
<br>+pid_namespace *create_pid_namespace(struct user_namespace *user_ns,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0struct p=
id_namespace *parent_pid_ns)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pid_namesp=
ace *ns;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int leve=
l =3D parent_pid_ns-&gt;level + 1;
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div></blockquote></div>
------=_Part_4612_620864661.1490642105257--

------=_Part_4611_1458034178.1490642105257--


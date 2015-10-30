X-GM-THRID: 6211564621691617280
X-Received: by 10.67.14.193 with SMTP id fi1mr3634291pad.45.1446243988102;
        Fri, 30 Oct 2015 15:26:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.151 with SMTP id g23ls1558980qge.9.gmail; Fri, 30 Oct
 2015 15:26:27 -0700 (PDT)
X-Received: by 10.129.95.6 with SMTP id t6mr8886835ywb.7.1446243987478;
        Fri, 30 Oct 2015 15:26:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id q68si682399ywf.0.2015.10.30.15.26.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 15:26:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x234.google.com with SMTP id o38so74018633qge.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 15:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=+6UeWG2oaeS6/dHCBnu/VM0VbbFNfwGWpsVjgp/dB0s=;
        b=sXLtaX3fnyoFdBP0VTERq/adPKqyisM62kdkt7be1W9A77oZLiZy4jSkEjtOop60hq
         OiEN5RKYzSywk6N+1e0KLYCO0HlrdGOynzMO3b5Ec++da3Dro/JT9PaEAQLQbmn0Wlni
         JuOYG1RkxdUcwiX3b92vr7lq7DZF953BVEkuqybL/0Z8v4TQypdiCDOvSZpcylTwQRK1
         +NsiuiUj8mBKfNo1+qEvb+/BH+GMkD8IlHWv5mhD00RusVqcHrBsxxb5Ib8iD1d1l18b
         Peigxpw3H/5PIAIXJZIW8+s5wJCw2yfUVU2/orlWVROa1s+LFJbBKvikQmtEqIUTg4lg
         2UCw==
MIME-Version: 1.0
X-Received: by 10.140.237.208 with SMTP id i199mr13506865qhc.73.1446243987292;
 Fri, 30 Oct 2015 15:26:27 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 30 Oct 2015 15:26:27 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510302312140.2057@localhost6.localdomain6>
References: <20151030220302.GA3803@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1510302312140.2057@localhost6.localdomain6>
Date: Sat, 31 Oct 2015 03:56:27 +0530
Message-ID: <CA+5yK5EEA2s1gEdOkc6x-S4H9skc6p6euaFbuz00yrupcC+UjA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add
 __user annotations to remove sparse warnings
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 31, 2015 at 3:43 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 31 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> This patch fixes the following multiple sparse warnings by adding
>> __user annotations:
>>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got char *<noident>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got int *<noident>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got void *<noident>
>> warning: incorrect type in argument 2 (different address spaces)
>> expected void const [noderef] <asn:1>*from got struct lov_user_md_v3
>> warning: incorrect type in argument 2 (different address spaces)
>> expected void const [noderef] <asn:1>*from got struct lov_user_md_v1
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void const [noderef] <asn:1>*from got const char
>>
>> After this patch, there are no more sparse warnings for this file.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/llite/dir.c | 71 ++++++++++++++++--------=
-------
>>  1 file changed, 36 insertions(+), 35 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging=
/lustre/lustre/llite/dir.c
>> index cc6f0f5..da91226 100644
>> --- a/drivers/staging/lustre/lustre/llite/dir.c
>> +++ b/drivers/staging/lustre/lustre/llite/dir.c
>> @@ -1244,6 +1244,9 @@ static long ll_dir_ioctl(struct file *file, unsign=
ed int cmd, unsigned long arg)
>>       struct ll_sb_info *sbi =3D ll_i2sbi(inode);
>>       struct obd_ioctl_data *data;
>>       int rc =3D 0;
>> +     int __user *argi =3D (int __user *)arg;
>> +     void __user *argv =3D (void __user *)arg;
>> +     char __user *argc =3D (char __user *)arg;
>
> I don't think you need three different variables.  A void * should be goo=
d
> everywhere?  argv is also sort of a strange name.  Maybe buf?
>
> julia
>
>>
>>

I thought so too that void is enough and I did that initially, but it
gives errors when I change this:

               return put_user(inode->i_generation, (int *)arg);

See the errors:

drivers/staging/lustre/lustre/llite/dir.c:1263:24: warning: incorrect
type in assignment (invalid types)
drivers/staging/lustre/lustre/llite/dir.c:1263:24:    expected void __pu_va=
l
drivers/staging/lustre/lustre/llite/dir.c:1263:24:    got unsigned int
[unsigned] [usertype] i_generation
drivers/staging/lustre/lustre/llite/dir.c:1263:24: warning: expression
using sizeof(void)
drivers/staging/lustre/lustre/llite/dir.c:1277:21: warning: incorrect
type in assignment (invalid types)
drivers/staging/lustre/lustre/llite/dir.c:1277:21:    expected void __pu_va=
l
drivers/staging/lustre/lustre/llite/dir.c:1277:21:    got int [signed] <noi=
dent>
drivers/staging/lustre/lustre/llite/dir.c:1277:21: warning: expression
using sizeof(void)
  CC [M]  drivers/staging/lustre/lustre/llite/dir.o
In file included from include/linux/uaccess.h:5:0,
                 from include/linux/highmem.h:8,
                 from include/linux/pagemap.h:10,
                 from drivers/staging/lustre/lustre/llite/dir.c:42:
drivers/staging/lustre/lustre/llite/dir.c: In function =E2=80=98ll_dir_ioct=
l=E2=80=99:
./arch/x86/include/asm/uaccess.h:260:21: error: variable or field
=E2=80=98__pu_val=E2=80=99 declared void
  __typeof__(*(ptr)) __pu_val;    \
                     ^
drivers/staging/lustre/lustre/llite/dir.c:1263:10: note: in expansion
of macro =E2=80=98put_user=E2=80=99
   return put_user(inode->i_generation, argv);

Also I gave those names according to the type: ie void: argv, char:
argc, int: argi

--=20
Amitoj


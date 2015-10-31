X-GM-THRID: 6211302879745015808
X-Received: by 10.50.43.226 with SMTP id z2mr2916432igl.4.1446298751933;
        Sat, 31 Oct 2015 06:39:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.10 with SMTP id p10ls974393iop.89.gmail; Sat, 31 Oct
 2015 06:39:11 -0700 (PDT)
X-Received: by 10.68.139.2 with SMTP id qu2mr10554641pbb.0.1446298751593;
        Sat, 31 Oct 2015 06:39:11 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22a.google.com (mail-ig0-x22a.google.com. [2607:f8b0:4001:c05::22a])
        by gmr-mx.google.com with ESMTPS id mh4si341353igb.0.2015.10.31.06.39.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 06:39:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) client-ip=2607:f8b0:4001:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22a.google.com with SMTP id i2so26013814igv.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 06:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=1v9WLYgdtGc64dFjFW6heWRUM73NXv7V7Ht+Xw4bYjc=;
        b=eRNf21w0AaWqXkObvDlP0Bw1Ao3BdmfqHG78ILI/rIMZxe6+902KrxvxPAcLjNpkzc
         7ilZmCdhnQSCp3u2cDKwSVWwreKJOsTstVm7znUEBPpTz7BWEFvp7UIWi47NCLnvSq0y
         bryO61YDSjQWLrcqwXVW9ytqp+qeS4n0bKGikrlMD1unic2c14fYz2uyGlcscIIi3Ctg
         L+mj9SQVNJnJ5PxK8lkKS0lxtaeU7Erb1wpiLkmjvckfFcpY+OHjdiGRd3AnFYbfYZID
         SOZIhcSk2nET8tkLAbmY1MRuJUwdVXYDMgua28ywVwrWmll7IAWPznKQfgPQBrxGFbG1
         rH+Q==
MIME-Version: 1.0
X-Received: by 10.50.43.162 with SMTP id x2mr3079361igl.82.1446298751480; Sat,
 31 Oct 2015 06:39:11 -0700 (PDT)
Received: by 10.107.149.205 with HTTP; Sat, 31 Oct 2015 06:39:11 -0700 (PDT)
In-Reply-To: <20151031064127.GA5145@sudip-pc>
References: <cover.1446181130.git.ksenija.stanojevic@gmail.com>
	<59f1545cfe6cadeeb4e23ea099df3dab1ff9e6a3.1446181130.git.ksenija.stanojevic@gmail.com>
	<20151030071517.GB31483@sudip-pc>
	<CAL7P5j+v+ovje8fnEMz046CdmDsNKXR+HUETXSYFS20mErzTRg@mail.gmail.com>
	<20151031064127.GA5145@sudip-pc>
Date: Sat, 31 Oct 2015 06:39:11 -0700
Message-ID: <CAL7P5jLSNR--wmvbgx5dET+cChC9k-KcpXE1KtA9F6XVa2FN=w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: comedi: ni_mio_common:
 Fix endian sparse warning
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 30, 2015 at 11:41 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Fri, Oct 30, 2015 at 08:01:27AM -0700, Ksenija Stanojevi=C4=87 wrote:
>> HI Sudip,
>>
>> On Fri, Oct 30, 2015 at 12:15 AM, Sudip Mukherjee
>> <sudipm.mukherjee@gmail.com> wrote:
>> > On Thu, Oct 29, 2015 at 10:22:45PM -0700, Ksenija Stanojevic wrote:
>> >> Data is pointer of type void and can be used to store any type of dat=
a.
>> >> In function ni_ai_munge:
>> >> barray and array have the same 16 bit offset.
>> >> blarray and larray have the same 32 bit offset.
>> >>
>> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> >> ---
>> >
>> > Yes, it introduces build warning. You will have to do the change in su=
ch
>> > a way that it does not introduce any new warnings.
>>
>> My idea was to place declaration of buf and barray within #ifdef PCIDMA
>> but in that case I have a new warning:
>> warning: ISO C90 forbids mixed declarations and code
>> [-Wdeclaration-after-statement]
>>    __le16 buf, *barray =3D data;
>>    ^
>>
>> So, I'm not sure what to do and if it's possible to avoid introducing wa=
rnings.
>
> Keep the declaration where you have kept it, add another #ifdef PCIDMA
> just before the declaration of buf and barray and #endif just after
> the declaration.

Thanks!

Ksenija


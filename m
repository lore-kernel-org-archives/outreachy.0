X-GM-THRID: 6208922267806597120
X-Received: by 10.50.62.49 with SMTP id v17mr4858364igr.1.1445628493270;
        Fri, 23 Oct 2015 12:28:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.101 with SMTP id u92ls1198392qgu.93.gmail; Fri, 23 Oct
 2015 12:28:12 -0700 (PDT)
X-Received: by 10.31.2.199 with SMTP id 190mr17840734vkc.10.1445628492661;
        Fri, 23 Oct 2015 12:28:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id i140si1507490ywe.3.2015.10.23.12.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 12:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id o38so75163636qge.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 12:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=2nojDtmdkyHsF6+jQHswEp10rZ1dPvhPcpvexCl3ngo=;
        b=s3OGFLbtJTLg5M4vrM/0NhY286okejyfWYzamacYeCR9A0LnNo08eXrKEuT3Aw8xaB
         1BTfmZ74i7Bt+nCE8cxX/zrcl0GzBTGdVBbNo8nCczSPsf8+xugAK0UvLY82diK/1sXW
         5FpgJGlKPeSDaN8Z0saiXIEp3xbfEocpqeIOaaKyHRuuKV6hvJrawBaVfl7nGmZX1vTz
         CDcfW6svZfUsKcGm8vDrO1kmVjCBHWFoZ5+niiP+w1nuW/ysqK7jcEjBRAn7cVoHse2M
         2PnR0PgGSHCuIArCnot4gtAMyNdGY2DUoXlEc76m7rW5CjBiXHWVDWW6u5dHaLHp/W61
         aaYw==
MIME-Version: 1.0
X-Received: by 10.140.99.117 with SMTP id p108mr27077239qge.91.1445628492490;
 Fri, 23 Oct 2015 12:28:12 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 23 Oct 2015 12:28:12 -0700 (PDT)
In-Reply-To: <7971017.NMVUFoYCm6@wuerfel>
References: <20151023190922.GA32154@amitoj-Inspiron-3542>
	<7971017.NMVUFoYCm6@wuerfel>
Date: Sat, 24 Oct 2015 00:58:12 +0530
Message-ID: <CA+5yK5Hm3UTHqTW35NdW-7UMv1YtMtD=mesXFN7=hP=u_h7m9g@mail.gmail.com>
Subject: Re: [Y2038] [PATCH] char: ipmi: ipmi_ssif: Replace timeval with timespec64
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 24, 2015 at 12:53 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Saturday 24 October 2015 00:39:22 Amitoj Kaur Chawla wrote:
>> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
>> will not give current time beyond 2038.
>>
>> The patch changes the code to use ktime_get_real_ts64() which returns
>> a 'struct timespec64' instead of do_gettimeofday() which returns a
>> 'struct timeval'
>>
>> This patch also alters the format strings in pr_info() for now.tv_sec
>> and now.tv_nsec to incorporate 'long long' on 32 bit architectures and
>> leading zeroes respectively.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>
> The patch looks correct, but I think that this time the format string
> was actually ok already for the microsecond value. Just leave it at "%6.6ld"
> and send it again with the maintainers on Cc.
>

Oh okay can I ask the reason that the change was required there but not here?

-- 
Amitoj


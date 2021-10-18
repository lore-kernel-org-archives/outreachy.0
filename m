X-GM-THRID: 7020448359173324800
X-Received: by 2002:a2e:9e8a:: with SMTP id f10mr1329983ljk.486.1634581137753;
        Mon, 18 Oct 2021 11:18:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3f14:: with SMTP id y20ls708301lfa.1.gmail; Mon, 18
 Oct 2021 11:18:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz1zMYDk9930tEx2nxCNmBnHW/jrP+3flgkJ8dPojp3BibXUrXF0i7YBCHa1FOlexH5gDcc
X-Received: by 2002:ac2:5e76:: with SMTP id a22mr1226485lfr.221.1634581136175;
        Mon, 18 Oct 2021 11:18:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634581136; cv=none;
        d=google.com; s=arc-20160816;
        b=a5HV25FdYxyHCEfUcsu2t2mhowe15cKHCCHv1ymNnd/dLwo8Yv82nctDTY5gylyj5h
         vBgSIUdwfEQm0y4oUg65iOFF1KL6n6TRyeqLqqwz9o0sj0byok+gWNHrCG7SjFWnz8UH
         kAkJcu0YaHTsCgACycxu8YXJWLu3uBN6t5tGAjLmoSsw29lPvHYwqpFb0VeCXYOWc1pW
         DjoHhQexl5GaMZYlsQ62WHTzWq7d2JuDK5ZSNpV4CijBbqCvXwfBaPTFSmcdhwqF0gjh
         HZguzguzErx4XOsozRHcB4ydeTxH2C1nNm8bQ2o2OY6E2/PPKCi+dmDUVfEJBQtFNfct
         +7KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T+YBLmXj85kbpmtk6BSnvpxwUKQkX+S8XZPPja9Re74=;
        b=bCUYq3x1r2wZc2Vcznfv3UkKA0U8OW+crJrVKKB1k+oqIG7zvzRnVjWSzV+jZmNmcm
         L8BAw9UxQleOS71HGL7EO1pSE5sCL6opQNDMPAwbTaFiJNCK45qxhjq/5imofowIoKwE
         mm81UusBAF7krR+F/qD+0aJh1F0DutM/5WQ96Mb/ny8CgjaNmTgOrZPWUnscEhUS9kDu
         JvzDtipBoGfJUn23XQWdcqE3yiCwgTyAlCotQp4RDLZ3wFGW0rvy6SGaAvpGPqZ4psrC
         wUHYRoNmk+I4zxQls3HLX8KU6Tb/J5tgoauf3ijxEXhv9oX5wFR4pWiN0yXz6J5qW+M2
         bbqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HODlOhu5;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id q4si1016155lji.6.2021.10.18.11.18.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 11:18:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HODlOhu5;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52c.google.com with SMTP id z20so2422143edc.13
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 11:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T+YBLmXj85kbpmtk6BSnvpxwUKQkX+S8XZPPja9Re74=;
        b=HODlOhu5Jf5oet6rXvGG0Tp+6lBcX0I8UzvD5SSAFTV5Wc5Ai4hvXGemh5kHJ8sI6A
         vfNn3biouY0+TVx/VB3wnzyic0h+25Yf1cAIvmp65iw3G+JetAWIq1epUH/VNpk/x1xF
         JBjNQniXj4e8o+mpJsaI+i7orbNj5tCEJbM+309tWoOzGgRzHRK/KbZhq5B2YRyW2FIB
         SftzUQ2TBUU9FyS4lT13gWwO+M2w355v2aIHmTQlQSa3bEEGRpqCP6r+0ry7Mrzr9Et1
         OUckvM7yF3LyZPvnKw+jG8NJ8JmRJ71q8LzAstLJC0J/KUxCi115eGC5A2P2igK6FvnZ
         NqYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T+YBLmXj85kbpmtk6BSnvpxwUKQkX+S8XZPPja9Re74=;
        b=XUiln2ahBod7ZHN3XyZTWrbAx81ApNBGhNVa/25650YTvK0iNqEGU61VLudJWO7zbF
         p3TffpjIWPbPdqR4/4IhpdSEzdFCDpWusbFCwI5hye2QYu0fXc1VC+DDzehyICnEuS0j
         wGy4hM+aajTcxjDtwGK2EzatPqokFsDhEL3/WM60tPbq/ZxbuqCAxJfNlQVNcLDNoiTL
         sJVvzOEeFK4Gc02/7ud2V6fd7Ou8QcDcZ3C6L/WqvwPHmB4snaBwzjm3rMrRaE8bBRUo
         b5beqJRk4yzJCGNxldx/IKXwpcdnygw61cRMYRZt+AXBKEtU33QyQwd69E+s++Y6frnV
         sZmg==
X-Gm-Message-State: AOAM533udgyIKP//lM7oRR/hPvW0Zx6EH4v/tL2jZ6coT2HXdyt68VhL
	bgFKk8kfXlgx//gZF0Y6xE2j63yLaeM=
X-Received: by 2002:a05:6402:51c6:: with SMTP id r6mr43944932edd.276.1634581135656;
        Mon, 18 Oct 2021 11:18:55 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id p10sm9390289ejf.45.2021.10.18.11.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 11:18:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: sudipm.mukherjee@gmail.com, gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, kushalkothari2850@gmail.com
Cc: teddy.wang@siliconmotion.com, mike.rapoport@gmail.com, Kushal Kothari <kushalkothari285@gmail.com>, Kushal Kothari <kushalkothari285@gmail.com>, linux-staging@lists.linux.dev, Karolina Drobnik <karolinadrobnik@gmail.com>, julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in array const
Date: Mon, 18 Oct 2021 20:18:53 +0200
Message-ID: <2371688.97nOaecjje@localhost.localdomain>
In-Reply-To: <163460335.XzdQGyDEVH@localhost.localdomain>
References: <20211018164431.26462-1-kushalkothari285@gmail.com> <163460335.XzdQGyDEVH@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Monday, October 18, 2021 6:54:34 PM CEST Fabio M. De Francesco wrote:
> On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > Change the parameters of functions from const char *g_fbmode[] to
> > const char * const g_fbmode[]. This additional const is needed to
> > allow us to fix  checkpatch warning, as well as being good
> > programming practice.
> > 
> > For the checkpatch warnings, if we have a set of command line
> > args that we want to check defined as:
> > 	static const char * g_fbmode[] = {NULL, NULL};
> > 
> > checkpatch will complain:
> > 	WARNING: static const char * array should probably be static 
const 
> char * const
> > 
> > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/
> sm750.c
> > index dbd1159a2ef0..3d9b4b0efcb1 100644
> > --- a/drivers/staging/sm750fb/sm750.c
> > +++ b/drivers/staging/sm750fb/sm750.c
> > @@ -33,7 +33,7 @@
> >  static int g_hwcursor = 1;
> >  static int g_noaccel;
> >  static int g_nomtrr;
> > -static const char *g_fbmode[] = {NULL, NULL};
> > +static const char * const g_fbmode[] = {NULL, NULL};
> 
> You have introduced a logical change (g_fbmode[] entries cannot be assigned 
> any more) and a build error (because there is code somewhere that assigns 
> values to those slots).
> 
> Please, build the code after you've changed it.
> 
> Thanks,
> 
> Fabio

Hi Kushal,

As I wrote your patch has errors, however, if it had no errors it could not 
be taken in any case. I just noticed that you forgot to CC linux-
staging@lists.linux.dev. 

Some days ago, Greg Kroah-Hartman wrote clearly that he cannot take patches 
that are not submitted to linux-staging. 

The "Submit patches" section of https://kernelnewbies.org/Outreachyfirstpatch 
is a bit misleading. However, Karolina Drobnik is taking care to rework it.

For the moment, please use the following command (or some smart variation of 
it) to get a list with _all_ the people and mailing lists you should send 
your patches to:

kernel_source_dir@localhost:~ # perl scripts/get_maintainer.pl --separator , 
--norolestats -f drivers/staging/sm750fb/

The output is:

Sudip Mukherjee <sudipm.mukherjee@gmail.com>,Teddy Wang 
<teddy.wang@siliconmotion.com>,Greg Kroah-Hartman 
<gregkh@linuxfoundation.org>,linux-fbdev@vger.kernel.org,linux-
staging@lists.linux.dev,linux-kernel@vger.kernel.org

Thanks,

Fabio

P.S.: @Karolina, please correct me if I wrote something that is wrong and 
that contradicts the new text you are working on.






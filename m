Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6102D8473
	for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 19:34:19 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id d11-20020a05600c3acb00b003ef6e6754c5so4673876wms.5
        for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 12:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680032057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=C3mcUEzh4xTCxNi36SBK8a0Q3R5FtEvJD7rcd4RDurc=;
        b=WcoAhAADhFFUJQOIyImxj8HUheOMz2gHQGj0axibzsZPquh9vS8JmpKaRsNy5kEdcG
         1dYeNuiTLkAnn+/punUosKHMcAsLDjENkyIgQ69pBly4bFFZqYVjGLnXIcp1H2FP0PuF
         fqo42cFUTKjQlXJDeBRSXh5jC54RRdyFIuoBXeSpFzEWBON3Qx6g3jF6Y6BE9RWMh7NV
         teXYkvxiw9bmytbhppGq+Q6jq7hlFNllEZt5S4ef8HRRll5QPtRB6mWPk2dWcoWPxjTG
         Gv3rGynHDE9iZyGrrP4YVgeeC97g7t2NP98lMnYOZ+3ubxH4gL5I4VSu+onShCjikk6M
         TllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680032057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C3mcUEzh4xTCxNi36SBK8a0Q3R5FtEvJD7rcd4RDurc=;
        b=Na/Yh0G5P0H/seKdfsz2aGDIVYOHjmKRMnHvUtUPIuRvM88ZFb11i7cAgCLgX0gkhV
         WvJOzTwjecC6II6PN2Zk0mweQ4EC5RLXB3NLBurINMvvrht1Lp1RcJVLGKpX2eztd2E9
         hAMVx+F+9uhcwr9kbxfPWDC8x7Z+5d2jKL5ohhInPimOUzqgZvEUr61Hpa3Q0nW9nAN1
         rP4YS9b8GP+YaN3XqJ/O+VoTQKJyqoEKTn+JVxOdQaUgcVIDaGK9WMo5aO18AzdX3FjI
         IVt06qHQL/qI8FIufx7FnIkHH1sgWuA/wPu23WDUmWnR5tWPVEQGO1ii+sUP8CeNbCpt
         fCmg==
X-Gm-Message-State: AO0yUKVpFYVVQk9gdEYYV+SRtcN13OL3tSblJq3T/Ay7V8UXI/i2mLtv
	VJLgoM3vX8VZ8tWAi5QYMr1NFO0yCrej7g==
X-Google-Smtp-Source: AK7set+T6c4kI7J+PzE5MDAqvPwdzpi8zhQxZW855c6SL8F5CcPo8tpEn+BxidSATI/Egta+u69YRw==
X-Received: by 2002:a1c:7c19:0:b0:3ed:a583:192a with SMTP id x25-20020a1c7c19000000b003eda583192amr12862201wmc.9.1680032057175;
        Tue, 28 Mar 2023 12:34:17 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id he14-20020a05600c540e00b003ef7795e5a3sm3421885wmb.20.2023.03.28.12.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 12:34:16 -0700 (PDT)
Date: Wed, 29 Mar 2023 00:34:14 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Suggestions on CHECK avoiding camel case
Message-ID: <ZCNBNjlQZEA0wiSk@khadija-virtual-machine>
References: <ZCIO5nBdYVEwdTpB@khadija-virtual-machine>
 <ZCMrmDaudxSMsPwt@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZCMrmDaudxSMsPwt@ubun2204.myguest.virtualbox.org>

On Tue, Mar 28, 2023 at 11:32:00PM +0530, Deepak R Varma wrote:
> On Tue, Mar 28, 2023 at 02:47:18AM +0500, Khadija Kamran wrote:
> > Dear Outreachy Mentors,
> > 
> > I am working on the folowing check reported by checkpatch.pl:
> > 
> > CHECK: Avoid CamelCase: <dot11RSNAStatsCCMPFormatErrors>
> > #37: FILE: drivers/staging/rtl8192e/rtllib_crypt_ccmp.c:37:
> > +       u32 dot11RSNAStatsCCMPFormatErrors;
> > 
> > CHECK: Avoid CamelCase: <dot11RSNAStatsCCMPReplays>
> > #38: FILE: drivers/staging/rtl8192e/rtllib_crypt_ccmp.c:38:
> > +       u32 dot11RSNAStatsCCMPReplays;
> > 
> > Such issues are reported by checkpatch in other files in
> > drivers/staging/ modules as well.
> > 
> > Should I change the varible names here or should I leave it as is?
> 
> Hi Khadija,
> The variable names appear relatively odd to me. You can propose to alter these
> as per the Linux Kernel coding-style. One thing I would suggest additionally
> would be to add a comment at the beginning of the variable declaration that
> would read something like:
> 	/* .11 RSNA stats for CCMP */
> 	u32 ccmp_format_errors;
> 	u32 ccmp_replays
> 	u32 ccmp_decrypt_errors;
> 
> Send these as 3 patches with the comment and variable change in patch 1 and the
> other two variables in two separate patches. Make sure you are able to build the
> full driver [.ko] after each patch.
> 
> I _think_ the change is good, however, it will depend upon the maintainers if
> they too like it.
> 
> Please allow a few hours for any other mentors to comment before you start
> making the changes.
>

Hey Deepak,

Thank you for the suggestion. Okay, I will wait for more feedback before
starting any work on this. :)

Regards,
Khadija

> Thanks,
> Deepak.
> 
> > 
> > Kindly guide me with this.
> > 
> > Thank you for your time.
> > 
> > Regards,
> > Khadija
> > 
> > 
> 
> 

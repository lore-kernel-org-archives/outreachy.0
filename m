X-GM-THRID: 6801528463992815616
X-Received: by 2002:a05:6000:4a:: with SMTP id k10mr10039943wrx.381.1583605845997;
        Sat, 07 Mar 2020 10:30:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls1291766wrc.7.gmail; Sat, 07 Mar
 2020 10:30:44 -0800 (PST)
X-Google-Smtp-Source: ADFU+vs8XaoLTYEr4pguS2V1lAHSf9bWM+G7Qzh7sFpF8+pyE/pXcxO2150kIpCBNFXC1GiQDdxq
X-Received: by 2002:adf:ed4c:: with SMTP id u12mr11400426wro.204.1583605844667;
        Sat, 07 Mar 2020 10:30:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583605844; cv=none;
        d=google.com; s=arc-20160816;
        b=sdVjHk6X+zFdE+3yNf3vJUvfoCT0+m+seXt5Bq54kOZdny+065795lf1PNnX9KUPAM
         8YzJ/zdgLLeOGvsR9pbL+eU3es9/NEEjvlLRkcECzOQt76Mg1NAj+fTOeO+C+ILE+HNa
         gndngqqY6kX4GlrsmhI7p2qYCy/XGl0j1hr7TeTYtdtaOpp4PKmbAVAHvhvqhkia4KXX
         w9J6Hx3NMXzOcQ3EQiRPM2+hZhHZ7N4ycy4jhJsk4gfzV8DLFiOIStem+aSiz0YXjpmR
         tsjJKbw/uA+w9f7KenItKEGcuN0lTtgd7uMU4FtiD/z53ZGLYjy6/vr5o/SEKIM7q/BM
         lpBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2MKO5QqkSnMU7nZfVwsJ55DYyk4KBvzNTwoTrPRFRQ0=;
        b=f/lzbmqQQqvi/zFHNlhDmLrqBoABas+XyJrxxEC1AAC1XoTw7YvXp3TGA6J4LES+8x
         5wLNSGH3PYcO5xZU+VddaTg8jJS7YwRbTYG4Bj6lLHWFER2ZzVA3UC1JO0ycluF691JS
         5BvjziOhc4mG1rjCldQkzMo6a+7cwZdx1BNZc/SIpYrdss1tw5vneZDU7bxKB7jghJeS
         kPyP8iV+UkauM/wQ6dAgbD1rHW4sq4Fn8P9grsoder6iDOdrluCNmVDcadkue8w/nICv
         C1DJ5uFxa1bvYWbqHKLhT2AtVFL3Jd35s1xtX9GIUAJJ5f4r2xLU1MqHLN2zfOF/dgCC
         lDlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=ae79gk4P;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d14si220545wru.1.2020.03.07.10.30.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 10:30:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=ae79gk4P;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x441.google.com with SMTP id a25so2344081wrd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2020 10:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2MKO5QqkSnMU7nZfVwsJ55DYyk4KBvzNTwoTrPRFRQ0=;
        b=ae79gk4PncAWy10XiUyfDMg9KfOqGGnOip3+D/pTomhFgMED3RaDJOKmwbiPiFkMhN
         uS7EfxeI2pQcNVcAWfIah2QuLBhSWZRLLwMVwsbBTPIFSIlzs1PtcPTjqkw370KkarOu
         k2Y1VOnS6xQFr5qJxvj9eKhjvS6yFSaaII7bc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2MKO5QqkSnMU7nZfVwsJ55DYyk4KBvzNTwoTrPRFRQ0=;
        b=IBa+HC27o2ZTB7B9C6LBiOe4R+L9FZ9WdvmVoEnb9aoN51+0SILZHKnrNTMsxlwkeC
         Sv8FWRo4btkvzK5yAvY7F7OpmneUONgRwmemyumfezEfHQQgGKRJS9FlRl2/8sQOGvYY
         AyPbaScV4f6iv4pzE6yFR+om4BZ9gD7m1UsLuLIxauPqIvVQCkiSUBcze68TokrLCSId
         UIrqZA9Ys4d9/uxtewuosAJjX+y9iJs1Wg7YbZjsWUUnZhvTMK9GZT2SkN/RXmp7cNJF
         BlCw5NDFENgNaXIxd2XWqAoGXzfEXlygkBWoJcQ1leMr6HgREjDq/zG8dzwCUHKNqdwy
         keQA==
X-Gm-Message-State: ANhLgQ25KaKCTJQZBQRWQNDGonKVC0RPXmlXvj3ikIvrUP9+hdqhRsHk
	yix9FxbLyb6AhmxpwEUmQoYl2A==
X-Received: by 2002:a5d:68cc:: with SMTP id p12mr11135751wrw.220.1583605844326;
        Sat, 07 Mar 2020 10:30:44 -0800 (PST)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id v8sm52071385wrw.2.2020.03.07.10.30.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 07 Mar 2020 10:30:43 -0800 (PST)
Date: Sat, 7 Mar 2020 19:30:41 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] New here
Message-ID: <20200307183041.GB24478@supernova>
References: <20200307180359.GA24478@supernova>
 <alpine.DEB.2.21.2003071909240.2294@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003071909240.2294@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 07, 2020 at 07:10:04PM +0100, Julia Lawall wrote:
> On Sat, 7 Mar 2020, Lourdes Pedrajas wrote:
> 
> > Hi, I'm a new applicant for this 2020, newbie programmer too. For me is the
> > first time participating in a large project like this.
> >
> > While reading kernelnewbies wiki, it says: 'drivers/staging contains both
> > drivers that are on their way into the kernel and those that are on theirway
> > out of the kernel.' How to know which of them are in their way out? I tried a
> > git grep, but maybe there is a better way to know it. Thank you!
> 
> You can use git log to check whether there has been much activity of a
> file recently.  If so, it's probably fine to work on the file too.
> 
> julia
> 

I'll do so. Thank you, Juila!



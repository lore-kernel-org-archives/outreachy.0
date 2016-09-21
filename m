X-GM-THRID: 6332825078954196992
X-Received: by 10.107.168.211 with SMTP id e80mr8014847ioj.36.1474475739764;
        Wed, 21 Sep 2016 09:35:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.42 with SMTP id 39ls597839ott.0.gmail; Wed, 21 Sep 2016
 09:35:39 -0700 (PDT)
X-Received: by 10.157.42.75 with SMTP id t69mr3182463ota.92.1474475739336;
        Wed, 21 Sep 2016 09:35:39 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si519187par.0.2016.09.21.09.35.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 09:35:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so2590502pfl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 09:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ulFBFNGZhWQ1Opb3V6mVuOr9VTfun3dh2b2Qitle2Ok=;
        b=WwTWoya16fwu5SD+RprLjb8AqAvyLUVaPIHo/h906h1zfDEO3DiIJzp2CFCjSEs7VA
         ZfPwKQm++z2vEaNxxynvS7HtFZ44Nbn4qztGyfZLouzfus00EhJognUJvF9f9bsfu6LC
         XmFdxS9FUoStH4lQaNQewOwnfh/qnSCkCMoYeeSVcODNqJc35k5s0koNdkbVgWvmjWNA
         TFU4rn60ivD2vECwA/wBNjMcF/aGtbRTKVhje/kHpvSPO/E4zSlCfrtRLKdyarcBBmKK
         9h/o9PU+plfdKARdaOnB9qrppTkQrr+W1l8T06BLn7Ry4C5ViBFiMKR65KUaWE6tuNnj
         kBHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ulFBFNGZhWQ1Opb3V6mVuOr9VTfun3dh2b2Qitle2Ok=;
        b=OCnnFLT956LKbQ0Tkcw+Bp2rIfAOoblT3jN9ZXyQIZ/O6l+hvlgRaYWfNxO2m7Lhe3
         9LDPdPcjhCajDNeTG6Ffd6Re6IWk/KEh1YgBF4jGYsUoy4w0mpp8DUreuI5BxQLq2g6s
         irQSyI/67xhlgiTmoxDcTc3Akl5Dutx7TQq08Q3mwiv1yw9bxDte53/i/S11LX6GUt0x
         b6np8h2kPhI1OH+H98hTtM/tS7T8sR6VE8qvjpmp9arKeThVkMt3Jt00iOb4DijW9Umu
         aADRQ1FSgMqO9yG7JslkrIYyEXl6UT6ndg5L9cAunWV1RNMdClgSdVHtchj6ZPBjrCZ/
         wOCg==
X-Gm-Message-State: AE9vXwNt+dqLYc7MFt12tSe634lsH2ouBSGyz188Zj3BuZRj6AC+0UO8fLgwGte9VlMtPA==
X-Received: by 10.98.150.157 with SMTP id s29mr32429917pfk.3.1474475738997;
        Wed, 21 Sep 2016 09:35:38 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id an11sm47895394pac.26.2016.09.21.09.35.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 09:35:38 -0700 (PDT)
Date: Wed, 21 Sep 2016 09:35:37 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sandhya bankar <bankarsandhya512@gmail.com>
Cc: Daniel Baluta <Daniel.baluta@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: Regarding Coding tasks
Message-ID: <20160921163537.GB2358@d830.WORKGROUP>
References: <CAA3ASznBotgs6B63N3S2T8Uzb1PYQobhttBtXkDiYiR1Bxs7-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA3ASznBotgs6B63N3S2T8Uzb1PYQobhttBtXkDiYiR1Bxs7-w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 21, 2016 at 09:09:38PM +0530, sandhya bankar wrote:
> Hello,
> 
>     I have seen coding tasks on https://kernelnewbies.org/IIO_tasks.
> Please let me know that, can I start with coding task ?
> 
> Thanks,
> Sandhya Bankar

Sandhya,

CC'ing Outreachy group on reply as others may need similar info.

Check the intro page, https://kernelnewbies.org/OutreachyIntro, for
guideline to start on coding tasks.

Check your patch count by doing something like this:
https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=sandhya+bankar

Check with Julia or other mentors if guideline doesn't guide you.
Perhaps you have patches elsewhere, or this is a return round for you.

And, Sandhya, short answer to your question: Yes!

alisons



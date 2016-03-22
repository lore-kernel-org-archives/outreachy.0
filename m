X-GM-THRID: 6264811554202451968
X-Received: by 10.50.65.34 with SMTP id u2mr826075igs.6.1458663251779;
        Tue, 22 Mar 2016 09:14:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.104 with SMTP id sx8ls1806090obc.4.gmail; Tue, 22 Mar
 2016 09:14:11 -0700 (PDT)
X-Received: by 10.157.40.15 with SMTP id m15mr4185845otb.32.1458663251391;
        Tue, 22 Mar 2016 09:14:11 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id 138si821796pfa.1.2016.03.22.09.14.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 09:14:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id u190so318593112pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 09:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=W0T5n2AWs9U/LbD2b7vAWL3Qxi/6JtF6yEeCCXLaX3A=;
        b=Swk8Ee/jodz+gyt2qB8gCydpd9Nptj5C0e+AzWjFWQjLaIu5UaQqj7jrp3er6iyKMy
         QYkWl2LqU8PUOpIgCtUzr4xeMVLci/8u9HdEqR1BS/wsoeBxgQLLCUjjscpju8ZHTqd5
         Rg0+IeRapadcIUcBVWILe3ZBrs4HDl/4pywFMZvkczPfrO5nvRhV7T6ElSKddl9bwIyi
         v5KauIJba+AER3LphkNIotEvz+fs2p0hneaAV8P5tVTNdrWWEtsugqYSOHzCIFyAyQ/d
         z2uWpZNN96jar8cIP9u9UJXi4nU/YU6ROnhL5EucU0cSSscHVIyfhg0UaPLaHAtJW3kG
         O9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W0T5n2AWs9U/LbD2b7vAWL3Qxi/6JtF6yEeCCXLaX3A=;
        b=fR/zH+MCtRXJgzXpiGJ7lVsu5PMmEeEk0/zoaG6s6SwzihdzK6k9D8w+TR7yCBKIKh
         /hbiRdBg8i+hiw3WgUhZ7pI9EqCxSI9+ufXCyDhrzmQjY7/6pfBvWhDu6e5pHpmpCBjf
         HO8s8QN9qF47QyCOS6UEQcm1RumXTsEZpkdMvXgdPCpCZUe3jotVDGVBobKg3IsvncYK
         v1wc9IR7EMi17gaE0hvkZO4s6raPVKTMzOS08Jd0KSjNOepj1rAq+43YwE82FJMmeInU
         3fVnRUN8d3DSQIkodpniQ39hGMt7v4fQ94u6ZMinb588VTcSppy5iMHzGicAC1d0NfWG
         9o1g==
X-Gm-Message-State: AD7BkJLboyr3xEEYoaPEINWEae3ZZFzXvesGN4MjxDSF22wJC4lc27zMaaNkjcknYd0s8Q==
X-Received: by 10.66.129.130 with SMTP id nw2mr55528059pab.80.1458663251214;
        Tue, 22 Mar 2016 09:14:11 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-27.dhcp.embarqhsd.net. [67.232.66.27])
        by smtp.gmail.com with ESMTPSA id qh8sm49449950pac.40.2016.03.22.09.14.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 09:14:10 -0700 (PDT)
Date: Tue, 22 Mar 2016 09:14:09 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: deutschluz@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: rtl8192e: add more information to Kconfig
Message-ID: <20160322161408.GA2151@d830.WORKGROUP>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
 <397c302a-e876-4b6b-9e99-fb7f0f946457@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <397c302a-e876-4b6b-9e99-fb7f0f946457@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)


Angel,
Your plain mutt mail looks good. Looks like you may have skipped a step
in formatting the patch.  What you have sent is what the file looks
like when I am editing a commit.  Try going back thru the tutorial
and recheck the steps...
- if git show HEAD looks good
- then proceed to git format-patch
- and then send the file that git format-patch produces
Hope that helps,
alisons
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/397c302a-e876-4b6b-9e99-fb7f0f946457%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.



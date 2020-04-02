X-GM-THRID: 6810919292495724544
X-Received: by 2002:a6b:7014:: with SMTP id l20mr1821361ioc.21.1585817650003;
        Thu, 02 Apr 2020 01:54:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls996386ioa.9.gmail; Thu, 02 Apr
 2020 01:54:08 -0700 (PDT)
X-Google-Smtp-Source: APiQypI6U7L3yhP1J+y0L38KHjQDhvxRXcEOcKDsEf4pOmwwRhfxEovVwcZckWe/FNVZS0Xisq4S
X-Received: by 2002:a6b:fa18:: with SMTP id p24mr1781273ioh.89.1585817648523;
        Thu, 02 Apr 2020 01:54:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585817648; cv=none;
        d=google.com; s=arc-20160816;
        b=zyh/jwJDSx7bWJRcj7VRb/guuhlSN0Aln6Wr7/apG7OJUlvrO2g+cZ83o4j2ga977t
         CQPS/TCw24dJfFnHiSqHaCJGjHo+SuwBtj0C3QT7evmzrt/+iHw+NmMvbtSfBGFvVWs9
         Gzvv5KZ/p0et35dX+i6f88NVu7NfXvwrBNzU91UL+SQaDXFkmrMtIBGdC/vAkrOtp8gW
         j3znj6GgihZG6X/1f7xmkO9NXFhc1UudSKVZ1A0oXk2YJnNDZpWgcJbhQvkH7fdR0dPW
         H8lc10wwq2CV4u71Dod7hw60uFjYU1Cq91x2ApVxNiJ5L5o+XzN2kO5sbfMMzWmirTwW
         91mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=rp02dHB1I04qFW3wF4xnBhkeN0t6rJbrLOQz5vyL7oE=;
        b=0CdbjZwCCL+6sFTAoVQbEuaAb5r0qb9atc7fnFL28VrJm0Nc/89RS3dbqWyXIy3cp6
         cAjZtc7eufskiTp7jQPv4PBBxZ4L6KNu0n6RN4fL/1sTGwR9U4x+i63OIOV21BFHT8u/
         pYykFCTwz4d59YPLvQ8wEen9+mElhUpe8Y7Cx9Pn5VXJZeXt99HQKaOlIxMsoYGb+TrX
         1v4yAPFfxoBgx6AUqYeztcm7kjfbfQJFutDL+VHeokRnTN0CjghL5Qv6hI5zDHbNYONJ
         2MIphSyd/2QV7Mad5/UpNwDXztIHkjCWPYEA8aG+9d1A4bLPwfadRaMsLaP2haj8QHg5
         A6Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ihD2IaO6;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id v22si306592ioj.2.2020.04.02.01.54.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 01:54:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ihD2IaO6;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id m15so1254701pje.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 01:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=rp02dHB1I04qFW3wF4xnBhkeN0t6rJbrLOQz5vyL7oE=;
        b=ihD2IaO6LLcbInW0/JMIXMBZg+xb3R2qL+kAaPMrs7+mHN5rKrUlqMpznNJ+GA34T2
         e9fG+8qlI9FhXAN60Ai85NjzJ6dqwAJJ6Lj04MtY+N+l1iNIGeSdgsJb70GPLiXGFj0m
         m0Te/dXLhl8rcgeepjkUgaG4xLlubA/gQfwcFFQEcu9MpdObtUi0jUjDZPL8DAPOqqUk
         IM95Tfq8iXd5HuZWPAwYQAnsSqjDykNBvo6DlE+3ngHEYmX1dhrknoYqAnN5ZSmJ861a
         9ig+uw4xiXQrxdltv4T/cOJh/ljZUoqkZBeaxiRoR6fH4LcIKFDxKtUmF6c8ts3GVw7M
         89QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rp02dHB1I04qFW3wF4xnBhkeN0t6rJbrLOQz5vyL7oE=;
        b=YcLS0Oj9Haver4hDt/58qs9K34UMXz36RclCWY7jB3ZhQzeYZNfjSvtjC2mhrztend
         r6PsJ7R/27MahtRDuzVT/2U5aTPe3VT+TO/4SOdfmasfSSLgOmeDxVRLKDWNAr3ASLDE
         X2+BAe8DXu738DHPyRHhA0pVEC0y753i5LjVAieVpWQ2aYDnkU1CUfeZkp8XMMxkHP1C
         3dL2Wxiz2qz6clWO43tXh9atTI8xRqQdtKqpECSeYwmAc4+ossGp/GWDPIYxkRjX52tk
         8bnnC5f+/FiDJmR35uCEEPSaZaTrfUGvADeXdTAs4+Lic61OmdQBETHeg9bx5GAo+LyO
         9g5g==
X-Gm-Message-State: AGi0Pub0wwrYZbL4Ya7X3OEYxuD9UCtXhj1j2sacD55PTOm1CbPexaYu
	cp+ws3z7x5aiZThwEOjzoxLswmJoUoX+VQ==
X-Received: by 2002:a17:90a:c207:: with SMTP id e7mr2567397pjt.117.1585817647947;
        Thu, 02 Apr 2020 01:54:07 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id x3sm3266999pfp.167.2020.04.02.01.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 01:54:07 -0700 (PDT)
Message-ID: <f8b3b9bb6544fb093b4c51b9626bfe8692e17b4c.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: android: ion: Fix
 parenthesis alignment
From: John Wyatt <jbwyatt4@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Thu, 02 Apr 2020 01:54:01 -0700
In-Reply-To: <alpine.DEB.2.21.2004020910570.3014@hadrien>
References: <20200402012515.429329-1-jbwyatt4@gmail.com>
	 <alpine.DEB.2.21.2004020910570.3014@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-02 at 09:11 +0200, Julia Lawall wrote:
> 
> On Wed, 1 Apr 2020, John B. Wyatt IV wrote:
> 
> > Fix 2 parenthesis alignment issues.
> 
> Please try to find a way to describe what you have done that doesn't
> involve the word "Fix".  What have you done and why?
> 

Understood.

How about:

Move spacing on function arguments to to comply with kernel style guide
on parenthesis alignment.



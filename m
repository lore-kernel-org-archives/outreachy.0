X-GM-THRID: 6530656197776769024
X-Received: by 10.223.152.44 with SMTP id v41mr2633297wrb.11.1520537700512;
        Thu, 08 Mar 2018 11:35:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.124.15 with SMTP id x15ls1145400wmc.4.canary-gmail; Thu, 08
 Mar 2018 11:34:59 -0800 (PST)
X-Google-Smtp-Source: AG47ELtFf/xD7NwO6dQIirfs1UTkrxPp0LduRBmQO1mrUYSvni+NvhPWxsDrlY03hp1iCQ6ojPx0
X-Received: by 10.28.230.84 with SMTP id d81mr1467811wmh.12.1520537699215;
        Thu, 08 Mar 2018 11:34:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520537699; cv=none;
        d=google.com; s=arc-20160816;
        b=gqFavAK6FaTAs+0j9B455Wiy6JimPMRI/8EVpvNfg1ErfriG160UNAHx0yAKPvymCB
         VDkAaCs40Y1ljZUmcfTOQAAaABqc94YfLoGmH5JtN2DTZyHmTqxPKf9pixXpkWG78Oi1
         WJqm/3hDwAYpspUsktaixkXKyT1nSequHTLRtCLTxQl60M7MMkFwaf0/YzOGUmQQaifO
         0oKBzWWCQZlqtO6kniXy6FRH0BOcRz6FrEGzN50nOYrC4n/xxX7GhG0mbFEVlEDIX7V/
         M9bL6II9vxwCFlkcbIHEnAWICRA545G4WmZCStfOidQXB7joJ8gO40c06bcM6r1xnEvI
         w/0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=REO/1AiyJIAAiy380rhw63IKkdivCawVPalXuyhzS6c=;
        b=kIMwoZ1kS52XyyV5nsrg59FxcavwalU61UxymIq4VIcKi4j/rtQFbrlCV9uyOUu9ex
         bnR68FW41h1Xjrjh1OX6p1cPMwKFVkXqx3CiZc/y3pFg1Er/qLXEv8dK68YYxaP+rX0m
         2eixlWzdpBvCb5nkOlOPK1avuc9Wyfr94TSVeRVHthHO4Fzmn+mmcdNRMeqCXGhF/tHW
         6zWbEBL8kKAY8BwKO2j4xbsk6vFrkGCtyaFbPCQObCZiYw2ruQG0MOyPUhI+0exbesvq
         bJeT99mfkijC1kVoC/eg53fBz2IcBuOAAyeUP/LXxUs04ZnJ7G1WfU2tX70NXQIISHDQ
         VjcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id f137si14659wme.0.2018.03.08.11.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 11:34:59 -0800 (PST)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 82E4F10BEB;
	Thu,  8 Mar 2018 20:34:58 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U9q_ziTBM8z2; Thu,  8 Mar 2018 20:34:58 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (static-176-158-111-12.ftth.abo.bbox.fr [176.158.111.12])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id E4764100FB;
	Thu,  8 Mar 2018 20:34:57 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1eu1JY-0001Ie-DC; Thu, 08 Mar 2018 20:34:56 +0100
Date: Thu, 8 Mar 2018 20:34:56 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20180308193456.uhipav5ddskpfqbr@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1520537231-14918-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1520536876-14181-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Nishka Dasgupta, on ven. 09 mars 2018 00:51:16 +0530, wrote:
> Replace simple_strtoul with kstrtoul. Issue found with checkpatch.

kstrtoul is not the same as simple_strtoul, we need temp to be updated.

Samuel


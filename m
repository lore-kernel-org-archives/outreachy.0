X-GM-THRID: 6530656197776769024
X-Received: by 10.55.79.3 with SMTP id d3mr19673913qkb.33.1520539431549;
        Thu, 08 Mar 2018 12:03:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.20.141 with SMTP id l13ls2951759qtj.8.gmail; Thu, 08 Mar
 2018 12:03:50 -0800 (PST)
X-Google-Smtp-Source: AG47ELu2rf9XSRrAtdjuaNPokQ3XtvczavV/jHo+TouWnXpr9wWZoi1RB05qLtIXMNGIUWDyW2e2
X-Received: by 10.200.13.202 with SMTP id t10mr17119476qti.57.1520539430670;
        Thu, 08 Mar 2018 12:03:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520539430; cv=none;
        d=google.com; s=arc-20160816;
        b=zRjSR4k63biebEXJfBdMPWZfD2I/aPDPnb89aW+iflJmNU4OM2KMDLhgMV8shwn9km
         HGpL+qzBJL8GW0QnCiL06ecO+oodHPhJ/DxIl6CiZdxp4o0Tt7w5Nom/sxYAwqRDG+cy
         9UWa3zT2yLYX34lPQLPXJnMbLFdSgx2g08dbZSpoVmfoY0JhtfGDzGrrzsQaROrCXfFq
         xK+2M+0lpW+3OrJB08Zce2SqiVEnrp/U73RAPW7lIVkYnYAjifG6zjjVHPiC7H/qLR/a
         hURJWheE31c2gzu2uj2UTDqRai2/tM2Rb1gCH8eY1NnTLpzGCeuRtkCwFl93MooYtEn8
         8Sdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Cm3n+TvkxiWCMCv55HHGiuWSbBTHwKFxfFJEpP5UA9E=;
        b=Z9VSAjSjWFkcjO9zncvcDdA7dKPGVlu7YeDO0mV/Vs523vhrHzHYWIbAV8KYnkEMGz
         Af4cAtfjB3n83M64g9JFXxv6igx6aKHyfxLx8BZQpv7wfDDzGBvH6vXs1GEbhL+ax57O
         OaT54HHcN9jIpNWlKALOp0kZfHZhs+By4w/+A0qOTEM6dENrtNJJLLWRTdvyUB4HaxAM
         seHVnv6avOmczVHkm5I+6/imMJJrG8bdOCmAD/j+yWo53zvb7f2t6orXA/tya2yIf9NY
         GMCYryWdu3ayfn9CHym2Op2CC8pdlmRfy2S/ELS5DDkBlEimJMEOi8G3ly4jP6ML6wfX
         JWDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=QNj8VoKg;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id f40si1530905qta.5.2018.03.08.12.03.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 12:03:50 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=QNj8VoKg;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x22d.google.com with SMTP id j2so337200pff.10
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Mar 2018 12:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Cm3n+TvkxiWCMCv55HHGiuWSbBTHwKFxfFJEpP5UA9E=;
        b=QNj8VoKggWWDIYmEtlwkbtrIPSHMX2aZmp5Zf7qLdcs5JLV1NbN7tALfP5/IxYNXS+
         3iRErCOHy+Z73EItVTPEp9C02+5parYNV/mPPl1/aXGHpkiE2mYyfxC0TLL7smqQ4B4j
         oxJUJHZgi2CM446/EwKzq6i6LIipa1vw4s1o8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Cm3n+TvkxiWCMCv55HHGiuWSbBTHwKFxfFJEpP5UA9E=;
        b=X3l4ZxlJizdfwN1dxjIH0iKPtp86H1gr+J7HSpqfIFR7KFyPSVZoFJB5S60hvuD+5h
         OySWnK7e9hJ9fP3xRCWQWuYc74xxgpL+p5IuqRc39lJcSH0wqk6yGv/TzORua1bVj9Mi
         ld4n5KHfafypy1LYcO700mI6nu8HqIxg2xYgIwPR942IRQOgmlpLP9Up8M50GR2ARDLe
         l1g2iS9Iw1jCY1uYXxgtcgohlLA6WtKF6aIhPP6Rp1DmHNIJPQq2y/MNitNQSvhJFv9+
         CkKi0O0hyFuum9oBQfpUKmOYrnW7QcfFx+FO6QD6EkBcfPO2KoXZuVdbDMeibuiJagEZ
         flMw==
X-Gm-Message-State: APf1xPDPbTwgYW+4k+yMvUZZ5I/h+yAeZF9uDVFxWFVT3P2vHwbgqQFL
	fKJh39OjbAKqyV9zIArqzQuSbg==
X-Received: by 10.98.155.93 with SMTP id r90mr27595366pfd.132.1520539430073;
        Thu, 08 Mar 2018 12:03:50 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id q15sm25630808pff.65.2018.03.08.12.03.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Mar 2018 12:03:49 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: samuel.thibault@ens-lyon.org
Cc: gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: Replace simple_strtoul with
Date: Fri,  9 Mar 2018 01:33:45 +0530
Message-Id: <1520539425-16513-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20180308195332.2hao4ys737ubr275@var.youpi.perso.aquilenet.fr>
References: <20180308195332.2hao4ys737ubr275@var.youpi.perso.aquilenet.fr>

>Nishka Dasgupta, on ven. 09 mars 2018 01:19:12 +0530 wrote:
>>Replace simple_strtoul with kstrtoul. Issue found with checkpatch.
>
>Again, they are not the same, we need start to be updated.
>
>Samuel

I am so sorry for sending the same buggy fix multiple times. Thank you
for the clarification. I will avoid kstrtoul warnings in future.

While we are on the topic of speakup, should I also stay clear of the
checkpatch warnings in keyhelp.c:102 and keyhelp.c:743 to add a
KERN_<LEVEL> signifier in the printk() commands on those lines?

Thank you for your time. 

Regards, 

Nishka Dasgupta


X-GM-THRID: 6528044448013615104
X-Received: by 10.28.202.2 with SMTP id a2mr383124wmg.20.1519935626951;
        Thu, 01 Mar 2018 12:20:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.138 with SMTP id m132ls1650853wma.5.canary-gmail; Thu,
 01 Mar 2018 12:20:25 -0800 (PST)
X-Google-Smtp-Source: AG47ELvyor4uK1cw0LOoC2w+58aKKUJNrQw9L1LzvIQL/zFkw/OHYMyHtO9kbtLX3W/LKccF2cvy
X-Received: by 10.28.239.16 with SMTP id n16mr361815wmh.23.1519935625569;
        Thu, 01 Mar 2018 12:20:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519935625; cv=none;
        d=google.com; s=arc-20160816;
        b=VS7d4V5531W1y6r5Orf7VzSFffRn0aqrNBpWQce3XTGH+eTMqJCKNkz8Li2GeMn+wV
         DabB6z+m2J7NVFbx+xDLFWLIWAgtg650lHoQ+lp/VhdrC5xdIKWMZqBv/NjyB/72Ae5s
         y4BfxeuilghBYP6b6ctrw9OXVhLI/B+BA9GI8ObS7X884Jbbw5Fhb7OBagvi7tpoTYkQ
         t5Cr5ogr9pchpGMa1W0KJCZY6FCo0bTBy4G2RIwg8kCxZuJCeOW69ZDZEktw095aRfas
         84d0Z2g45JB/eYlBwmsKlgDAWBeheLGAn27sOXSE6v1sg/T67H3wfmh6XmnNenY1mHje
         iNVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=4hlEHH19NxEnrIHQOYmMA8cXTCObfv30H/zakew+eVA=;
        b=vkM22SJvZeQiy6+WKUyn1N6L+5bRYD4g3kXEzXHvaSG+Uvz7kUCMx3uAYk922sUol5
         hCKkh8PSTf7BE28/6iNQWSgzVHsQ17bkCQLOm6GlhRlOOeGWhfklPP97+BzE3BeeqHmf
         gZTvdpug18XsCl6fv//U9MhsFlvLP3LikCvjM1NXlHK/ZiD1ifN9ot5QSY8OcC4+IsVT
         LE8GpVd1v8Hzzm1GIhzCxd3Iq4W+SE/isffWiOnx/J3TYDQunEc5J8P/CvK9XRNVH6Cw
         GFfLiNM6+D5tuDAuISAoZIc3d4AjiKbv8bvTKj5ROmA8RSHQ7nZcs7B8HN2ON+nlIh7u
         NYXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Ahnu64WD;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id g206si299405wme.2.2018.03.01.12.20.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 12:20:25 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Ahnu64WD;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-wm0-x22f.google.com with SMTP id q83so14550474wme.5
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 12:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4hlEHH19NxEnrIHQOYmMA8cXTCObfv30H/zakew+eVA=;
        b=Ahnu64WD3Yf1gnQ0MYLSlw14y9Sg7fIu5IgVSEUbSeD6DlqWfmk69XJYZyqkBlDT6l
         //tCcd7DuhIZEYxoURNAbo9SaCr6nWPO5yMi8fyin+8Q+QmNZSFBi/vEu4EbYuzp3+dN
         64VdacDKmRwRowQRwJH5cLu9kNvhfrD+viOhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4hlEHH19NxEnrIHQOYmMA8cXTCObfv30H/zakew+eVA=;
        b=DDQmBbt72FTBayrEwnLn3MygXn0brK/ydFfLi0Scd/Qa3QQ83Iqi9nb0UjEs5lIfOD
         kKReybiXku7AvPIQQ4mePDqavE8GJqbGQz/rJ4VQTasman2KN9UBW/aEG1bbsQt/dWLd
         PsOTucqaaAosh7CFlkxMBQSbnovvhsZURDOCL0+ATp6jIiFLYGL/DXp4abm9k6SkhxYM
         FuxROzX9ibyDQOziyaAT0WAQh8lgKVSSHhnEUQLJBtZvjDFvgRE5JM8KL06pqTIUYCfC
         EPwlcYoiYVKBm1esi65kvMWkE5+m1N0eXAp622w6U75xizZjbaLXG5u+WmIxSx8ZwZV/
         8whg==
X-Gm-Message-State: APf1xPCsD3ES8hs9cPJHm80hD4wkIQNi6uHo6z/MoHPr8zRFBQ1I9fKq
	1t2bYuaSrxbiUzvMTPN3uwtJnw==
X-Received: by 10.80.131.67 with SMTP id 61mr4331633edh.16.1519935624555;
        Thu, 01 Mar 2018 12:20:24 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id u38sm5130418edm.50.2018.03.01.12.20.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 12:20:23 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	stefan.wahren@i2se.com,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com
Subject: Re:
Date: Fri,  2 Mar 2018 01:50:10 +0530
Message-Id: <1519935610-27428-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20180301193342.GA12402@kroah.com>
References: <20180301193342.GA12402@kroah.com>

This is with reference to your last email pointing out that you have no
context for what I am responding to. Unfortunately, I have been unable
to get mutt to load my inbox, so I could not and cannot quote text
directly. I have done my best to reproduce the conversation below in a
coherent fashion; nonetheless, I apologise for any persisting lack of
clarity.

An hour ago I submitted the following commit with respect to
drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c: [PATCH v2]
staging: vc04_services: bcm2835-camera: Add blank line

Your reply: Checkpatch is wrong here, don't you think? Are you sure this
is actually doing what you think it is?

My reply: Checkpatch suggested two warnings for this file in consecutive
lines: "static VCHI_CONNECTION_T *vchi_connection;" and "static
VCHI_INSTANCE_T vchi_instance;". Both warnings said to add a blank line
after the declaration. If checkpatch was wrong, is it okay if I submit a
version 2 with a blank line only after "vchi_instance" and not below
"*vchi_connection" (effectively undoing one of my commits)?

Your response: First off, I have no context as to what you are
responding to here, please always quote the email you are responding to
properly.  Reviewers deal with hundreds of emails a day, and not having
context for what you say doesn't really work :( Also, properly wrap your
email lines at 72 columns, your email client should do this for you,
right?  Please respond to the email with the correct context and I will
be glad to respond.  Right now, I have no idea what you are referring
to.  

(I am sorry for the suboptimal formatting. I think I managed to linewrap
this email properly, however.) My question remains: may I submit a
revised commit that effectively undoes the first "add blank line"
commit, i.e. the one that added a line between "static VCHI_CONNECTION_T
*vchi_connection" and "static VCHI_INSTANCE_T vchi_instance"?  Thank you
for your time, and apologies again for the confusion.

Regards, 
Nishka Dasgupta


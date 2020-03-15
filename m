X-GM-THRID: 6804290192961175552
X-Received: by 2002:a05:6402:2062:: with SMTP id bd2mr24496292edb.105.1584308700624;
        Sun, 15 Mar 2020 14:45:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3715:: with SMTP id d21ls118423ejc.5.gmail; Sun, 15
 Mar 2020 14:44:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt6Il7UTF13P+tw8lxy/V1Ap9104s63IGvXUZ8Pt9bh6xFW1MwkZnKyIz/um/v6fi3SUVaF
X-Received: by 2002:a17:906:858b:: with SMTP id v11mr16757876ejx.337.1584308699376;
        Sun, 15 Mar 2020 14:44:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584308699; cv=none;
        d=google.com; s=arc-20160816;
        b=K0MAzbsp0EpkyVHZMaer7tFuE8Ue8TF/kmKnnSieEwux7cLhizVWCBIVHLjRA0o1UE
         /cXg1s2OCJZagrrONb86Kzefne2JoXnBMWNS0S61byxnDxvPm4v/EAUKjMptA2aNpjEy
         T6ShWrWZex/3mnv3eJ+AvWJLCS9vN7V+OXWSlJ2geJJhSfULpnWNG/wDoJRtGAWs7abi
         CgkmQK0T/73/4Zo5gCZjBhXALQR8Xm9iytJBPDzea6J9i/81jmO/DV8zizoR6Xt0GA08
         n7baFv3oMyapVIeg5UymAqDFGztD2ZvZg28NO/lnXazhSyLmporZKmiEvTigCKP4oTIM
         gJUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zZI9oRmNHD8Uwk4O8qd6Vk9zehlqrgT9TDkLYavgTSk=;
        b=AAXEy/WC0W6A1Kw+GU6DmcluO0gHiWW8E2qTW0e8O2mPuzK9eHBBdMHAAnVc6Q3MP7
         3etNJlMIW7TPncOp6qQub8+3e/E/Uwunp5fSSA7NcynLj0R/EgmQ6cLn4tUB5dsD2xQf
         lSjcMaPqfY4HL3BVxYhwIgWhN2eMDHzKoRAkfqMt0IgrDY4het06BowgTj0u41ZPpJus
         tXkSuRPNazvXdIwPItaq3gIKJFMqvGASqrBocCT4goMA+0CQK46mzXvmVrq135+CRXE+
         SqS5rAMd4G7sfgDE1Zk3NCQtW6OaokFcgeD25/TktwPefChHZGqa7WvT80y1Ct+h/XFf
         Rpkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="D4xP1y/0";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l21si549280edq.4.2020.03.15.14.44.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:44:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="D4xP1y/0";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x344.google.com with SMTP id a141so15945544wme.2
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 14:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zZI9oRmNHD8Uwk4O8qd6Vk9zehlqrgT9TDkLYavgTSk=;
        b=D4xP1y/0pzsSRLUp+uj6tuhARneGU/CFe2bOl7L5lyKuPimtdsX1/Js1x/Q/35tzop
         8bve8n+Utzdz1eUVYPXA/kC2oucEzvhWgAS45hothOrxjXs7i3BFJ0Dg05yLIX+eZQEh
         Stg1PRG2mMy0Uog/uy4np+iSZQKZ3FPG7UebA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zZI9oRmNHD8Uwk4O8qd6Vk9zehlqrgT9TDkLYavgTSk=;
        b=VPwO5kDuUhiJscgZ7c6T8H9xbIxhqx14fp4F4ApWmiormfN7FuwtWi3m/UceaCQ6z2
         VZpbKY6H0P5BkioeYgtmCFVpCPRc3NebOBh6P0drGmd7rwKBHc6JinZG4rN1yFyYzdl0
         efYL1QoxFoQmIY+zfoZk4ddPw8VRVqpM2AcZ2UFXVzakU4C6qXAHj0jFEiDgyR/etRpI
         Enf/zdTRdiOZkw/oF4DzDoco2JfsX37zbpg9MIdvl+OgzWgHScvoqIB6KTt6JYkkvbDO
         CtZmNmJqKTVDs1zTk8Vbxu36onuvPHm6E0q01X+R8ggOqnMQ3RUByQV3XCMZbbSp51XV
         ZIbw==
X-Gm-Message-State: ANhLgQ2PKLGjW8Vcr5M1xupZBFeyeLgPxGeJpzG39Y4E2fXPTTKMAVXK
	lNB7G9Q+axjPbNQSFVC6Ew86BA==
X-Received: by 2002:a1c:20c6:: with SMTP id g189mr24678746wmg.163.1584308699086;
        Sun, 15 Mar 2020 14:44:59 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id y80sm10837304wmc.45.2020.03.15.14.44.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 14:44:58 -0700 (PDT)
Date: Sun, 15 Mar 2020 22:44:51 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: outreachy-kernel@googlegroups.com, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: speakup: main: switch multiple assignment for
 one assignment per line
Message-ID: <20200315214451.GA7722@supernova>
References: <20200315044051.13921-1-lu@pplo.net>
 <20200315162446.evxlgilfye35eosq@function>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200315162446.evxlgilfye35eosq@function>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 15, 2020 at 05:24:46PM +0100, Samuel Thibault wrote:
> Hello,
> 
> Lourdes Pedrajas, le dim. 15 mars 2020 05:40:51 +0100, a ecrit:
> > One assignment per line is preferred, instead of multiple assignments.
> > To prevent possible undefined behavior.
> 
> Here the behavior is completely defined, but one assignment per line
> makes it more readable.
> 
> 
> Please rather use
> 
> 		value = pad_chars[value];
> 		spk_lastkey = value
> 
> To make it clear that it's the same value which is used, and to have the
> spk_something assignment next to the other spk_something assignments.
> 
Thank you for the explanation, I makes sense to me. I will make the
changes,

Lourdes.


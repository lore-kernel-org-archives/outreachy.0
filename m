X-GM-THRID: 6522861769148334080
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.46.45.2 with SMTP id t2mr244729ljt.30.1518723679326;
        Thu, 15 Feb 2018 11:41:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.194 with SMTP id s185ls59515lfs.15.gmail; Thu, 15 Feb
 2018 11:41:17 -0800 (PST)
X-Google-Smtp-Source: AH8x225IJ1sM9IR3bRyIHC+2uv4A/DW0IcHA07Ojyzrw/Gx6blJJi0ThwZPZJ1Sw/9UXWTCY3KvZ
X-Received: by 10.25.31.66 with SMTP id f63mr274108lff.42.1518723677013;
        Thu, 15 Feb 2018 11:41:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518723676; cv=none;
        d=google.com; s=arc-20160816;
        b=xRcR2BmRrGOdKiLo9r8+weKrQUjWJwOJAWz/z6tGuRm3ZzO0eUgqOBAWlKOiyi39CN
         tqFlrqhtLIPXDi4/5DsAyxYa8WuL2uguZrYxYBlvSjaBOmmcd5jwpqxCNitIRkGcnP+K
         zLvTymuUX6112uMW0oEaLYlpMO7hrtkDLnGO3+Gz7nMV8dpyzgg9MUMKjzVh2mMo6oPo
         o6o6ahlW1qXziYLaJlDFLywyXiMkVcdB1u/3GHh1NW+CAC+PD6ey1onSJdzwCFYZWSR/
         mRsTt2PCGsDD5uzLsJZSISXpVW/NiVUM4n9yZdUlXKKeqwKNqZjIKNJ9hdBcHvIg3JWH
         L8aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=wy+ws4Ld8r1FNIGMOCtzrfJ8nRbzuJ1nq24WOgE1jXo=;
        b=g/JvqZa6DyUZd4kD+1ZhO+zHoaspIrlfdMeRp84LIU7kRMpZ8NzUD4eDy9OBBZmqLt
         TZpWRdYRRbmIYF3CCaHfyNegIHcAqnbVK2mmSvLafkVO0ob65Z74c4ynTAu6sMwGTd2V
         3ce+0H4sqQfjT3ya0Oih+XuMPShldRbcqAhn+7YEspV9zqD2+BZesvog+GSBSsjmOsCG
         Dsj4+9i/LLVBA5zUkuE6eFdzvkccHF3IfVdXnyAlMmofmm0wQ27k44daDsEcj0k14x7p
         2KP2rLcj8V5BG8T6enuYjS48zIm6cRvOvZGOFEu0vHg1kTdyAOs/i4HAhXRq0uft74UX
         /d6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DW1JxPhm;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id m2si868788lfj.2.2018.02.15.11.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 11:41:16 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DW1JxPhm;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id t74so2921576wme.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Feb 2018 11:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=wy+ws4Ld8r1FNIGMOCtzrfJ8nRbzuJ1nq24WOgE1jXo=;
        b=DW1JxPhmyEquJmgz2LdeDWjb8OMuCcCUmS9lgl88YWZgl7MjFQhWKBnmg3XaeimSEy
         a/bqUjZJJrug9IhYQEcPoodywXuWTtal7kIiJzFz2SHYNXoYHoXo/EHFqEg5sIjZIShm
         RkSlHTuluZnIJTyyJOCXz1uYm2W/ujKbLWoQh/Gj/QrWYbZfDDnfX3ak4XVOKrDqIMjF
         1w9FsfZNNsCHjS8KKZFu5kkpsKXY+0MRoaD7Q2qvgZw7/Jp77Yibwi7bC+YpV9Y9Ohh5
         HTiljV62pmYsjrsnENBNL0av1PMcS6Wzai+2iWkSoUPKvl3qTj4NB3x/7hJCmI5wuEsh
         9WFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=wy+ws4Ld8r1FNIGMOCtzrfJ8nRbzuJ1nq24WOgE1jXo=;
        b=a3A5sIZ4hM8tULCie2dQUyEj3/E5kvuhVISJZ0FsZ/VuWGZ2BVmoQBkVl6UZIx8Ky5
         Ymvdpq1m7AFgWQSqSdbQtsR5ZQOxP73thkObTyu+Q7CVJCON0p7VzohxmQZBltlzA7UG
         S0gsAfgFcL7hmmXpDnNqZiES9vPng9gzdajPALvqaiH4zbngMRmKpcF2A5Cvhnfct82z
         1NZG3JP1Z1bjR8g5vKMqWuLvDitJ2bQdJRBBtnyY/EDtZBbaSkIOdHaaErs6JIE/MtJo
         bc14dcs0gdACHwLsmB4aiPShivgrRgJM620c5Gk86rxQZZUX0EAArJgqhSVG3caDtCIA
         uptg==
X-Gm-Message-State: APf1xPBWjFlQJ0a71RLAgjbwo+KhKPHrecvI0xu5fSDFoBsytbNHjjZ0
	2PhR4Z1jP2Rrs1Mgs6Ku3vWXbm1NxCPae9jUTybB1w==
X-Received: by 10.80.136.46 with SMTP id b43mr4983970edb.252.1518723676668;
 Thu, 15 Feb 2018 11:41:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.160.229 with HTTP; Thu, 15 Feb 2018 11:41:16 -0800 (PST)
In-Reply-To: <bcf6c0e9-b7db-468e-9e24-bed0fa9b05b6@googlegroups.com>
References: <bcf6c0e9-b7db-468e-9e24-bed0fa9b05b6@googlegroups.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 15 Feb 2018 21:41:16 +0200
Message-ID: <CAEnQRZAjrNa8=v4sjoRAZTAHsspEhbx9hPk07T=YVxsh7oYc2w@mail.gmail.com>
Subject: Re: [Outreachy kernel] mistake in the first-patch tutorial regarding
 .gitconfig ?
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 15, 2018 at 9:15 PM, Dafna Hirschfeld <dafna3@gmail.com> wrote:
> Hi,
> It is written in the first-patch tutorial that the name and email
> configuration should be set in a file .gitconfig.
>
> The .gitconfig file resides in the home directory. For specific project, the
> configuration should be set in .git/config

Hi Dafna,

You will want to have the configuration stored in .gitconfig in case you use
multiple repos.

You can have a look here:

https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup

thanks,
Daniel.


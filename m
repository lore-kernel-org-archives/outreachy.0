Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E9117C0
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 14:30:08 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id g20so14237786edw.6
        for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 07:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=5R8cCa7WJVhPxsGxxZjHVOR1H5oF/QHT0AdjPPaWjyM=;
        b=o0JGjyKr9aShW2+DOJDM74d5W5IPT09LrtPTxWjqpqU+gX5/aPZHchjafOM6AhGIj0
         27zgfdTNpT93pn8zdyDOzYcAeeNJ1yqVRQednqH22+SFNo2WFxj9zfI1hryu//7XXHn9
         kLX1MIRzqXTzGXpnjABY14VNmFhmTeEYXXpUo5O556k0WWoEme449gUy7qRyQ9LFoJyH
         GrSrN9FdFdB3w9/uh9IkV7uWrUFYKM+rLFVFpe7BaVWxgCOxz2uubhhH6NCD0MQLgCCu
         lkmHEvJG78yOAeOBsno6VOpld9Naa14CzpJ0sKDaUQF3QUcodCq0nE1D7RU5OvkoQVRO
         Mk6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=5R8cCa7WJVhPxsGxxZjHVOR1H5oF/QHT0AdjPPaWjyM=;
        b=NwRqkJ+49AVq7n+4SoUek8YUbaKV/Suksbr8nGbliqqOyv/Tsy0QE4LW6AZbbMumK8
         tZO9WoU2NATvU1lxyiZ1Unm7+L0z5pLeMgex+IPMDUsA/8NLIC3YpZNAa3DQWL6pF+C2
         +hvU2rEDO2pyY6q0JO1s178Se5HT50OGbKVP/hCytLF/TS66MhF9cq4sEqv1CkM3LQGM
         veqSRQaNaLck2fl+8L1oeJmu2Redx9Q47qp2/QMh2G5wl8MRFyr6CXwcxlwEsbrCt/Q4
         citZyYU/8i3M/OwuV6r5sK2rA/gyNowqNltjcPUsKmdBgSjpX/fXgkt8srOltVp04zhX
         fVRw==
X-Gm-Message-State: AOAM533UteoZKwjOQ3FAiFLrpO+qjFMvAIzIVLcZZebvyWv7JxXidIWc
	BGOqm0u86ySGZ/LUtlq8KAfeDphpbX8=
X-Google-Smtp-Source: ABdhPJxtwzylbXrx9bMMAK4oj/hGnn0jPKJ9W8dLTJB8K/PWybRaa/L0Tt87aOkcGf+wj8ELMz7bkw==
X-Received: by 2002:aa7:c58e:0:b0:418:f6f7:ccd4 with SMTP id g14-20020aa7c58e000000b00418f6f7ccd4mr10673479edq.132.1648391406353;
        Sun, 27 Mar 2022 07:30:06 -0700 (PDT)
Received: from kernel.org ([87.71.104.162])
        by smtp.gmail.com with ESMTPSA id nc13-20020a1709071c0d00b006df4e0d352csm4753778ejc.151.2022.03.27.07.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Mar 2022 07:30:05 -0700 (PDT)
Date: Sun, 27 Mar 2022 17:30:03 +0300
From: Mike Rapoport <mike.rapoport@gmail.com>
To: Priyansh Singh <priyansh.singh100@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Regarding outreachy contribution
Message-ID: <YkB068S+a2WEO4Hx@kernel.org>
References: <CAG5miiX+ya7U7KJGFy9=T8-Jh-Kq=dD2KKpmjBGkN2PO1MjmUA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAG5miiX+ya7U7KJGFy9=T8-Jh-Kq=dD2KKpmjBGkN2PO1MjmUA@mail.gmail.com>

Hello,

On Sun, Mar 27, 2022 at 12:43:20PM +0530, Priyansh Singh wrote:
> Sir, I have submitted PR to a lot of repositories on github.
> 
> https://github.com/fabric8io/kubernetes-client/pull/3220
> https://github.com/fabric8io/kubernetes-client/pull/3279
> https://github.com/cherrypy/cherrypy/pull/1918
> https://github.com/CleverRaven/Cataclysm-DDA/pull/51435 
> 
> I have a strong CP background as well.
> 
> https://www.stopstalk.com/user/profile/ps_19
> 
> But the issue is that I am not able to understand how to make a contribution to
> the linux kernel repository.

To contribute to the Linux kernel you'd need to send patches by email.

Please follow this tutorial to setup your system and learn how to post
patches to the Linux kernel:

http://kernelnewbies.org/Outreachyfirstpatch

> It is little confusing and I really wish to learn and get accepted.
> What should I do?

-- 
Sincerely yours,
Mike.

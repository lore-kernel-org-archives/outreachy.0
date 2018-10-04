X-GM-THRID: 6608518464000753664
X-Received: by 2002:a1c:4d0c:: with SMTP id o12-v6mr960674wmh.9.1538679502237;
        Thu, 04 Oct 2018 11:58:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:138f:: with SMTP id 137-v6ls1154492wmt.14.canary-gmail;
 Thu, 04 Oct 2018 11:58:21 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62jm2Gjz1Aaam2tkT6qDqgzCmbqAOeoO9FBdcVgDN9Rg9IfxjbZZcQ0wA15Y2cKwSTq10N7
X-Received: by 2002:a1c:49:: with SMTP id 70-v6mr272263wma.15.1538679501387;
        Thu, 04 Oct 2018 11:58:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538679501; cv=none;
        d=google.com; s=arc-20160816;
        b=KvFFzYFtgSMhQHX+BSfdKq6tj+yB9VNvlWxRzxPyY8BkVEOKeqgWI5Acr6mgFr2asK
         +TbVpa1q1u6WFY/w+6JTwF1NumqrOG2/cU/LmFumsPasqL/JDSgDIJtNv9ay2VMoV+Ya
         PfQgcdz34v7fMGcEwL1yQv4wl/+zAO20i8lAlNfoFr8EIRo0JqL1MVIWLAkw+Ul+W7KR
         Ts1G+xPsMLyI/2e67g2Dd2tVU6D0gW9tCiRoP5wMXQN3yFovz/2HlD9MZFnftlbIsWw1
         0zqWDd0xNE0zx0/S2D9WH+P6SJe6wgOwiQt6yXuXgx/9joiVRaepL8pOeeauszv3ytT3
         owxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5h+6zAXacDKjHpeCFSavm04qkOvkjIQaUiUapUbnApg=;
        b=ayUHChkS5bpXp731sPw3iqltqUrvfzVtPi9JRhE5im7/k3kIREgx5IdPZJg9b+8my3
         YMs+CwitEQ5/kf/U0ve7Ao/BZIXGUG/hSuZVP/TkZfC3f75uh9V0dgg1r0/eKgvB2osM
         jDGfb3axbqU/8E2jgjnPd0R/2xWlEZ5RdQ/mjaNE335dp22CivJzAaM6wGTbgFcAY+SF
         uDqHtUNWEIla7by2MUyKe6dh2T+DiAy8rpM8ilHO2b+Hmv+Q6ZprZ4zbFlBQ67fUR2E9
         gFDqGn6zYql+83H8IIG2gyUBmkk97DxaCNsduzJtL3OfTUkT+OuZMM02mtv8hCxbsXiv
         GI5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j193-v6si85851wmj.1.2018.10.04.11.58.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 11:58:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,341,1534802400"; 
   d="scan'208";a="280990321"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Oct 2018 20:58:20 +0200
Date: Thu, 4 Oct 2018 20:58:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy kerne][PATCH dri-devel]drm/ati_pcigart.c
 SPDX License Identifier is added in form of a comment.
In-Reply-To: <5bb62c85.1c69fb81.9de38.b242@mx.google.com>
Message-ID: <alpine.DEB.2.21.1810042054400.2377@hadrien>
References: <5bb62c85.1c69fb81.9de38.b242@mx.google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 4 Oct 2018, Bhanusree wrote:

> SPDX License added Identifier in the first line

Try to use the imperative in the subject line and the log message.  Your
subject line is actually confusing, since "is added" means that this is
something that waas done in the past, so it is not clear what you are
planning to do here.  You can use git log to look at subject lines and
commit logs that others have written.

You should also lok at what others have done in the subject line for
indicating the location of the changes.  This is something where every
subsystem has its conventions, so you can't just guess something by
yourself.  Buf if you do git log --oneline and the name of the files, you
will see that none of the existing patches on this file have constructed
the subject line in the way you have done.

julia

>
> Signed-off-by: Bhanusree<bhanusreemahesh@gmail.com>
> ---
>  drivers/gpu/drm/ati_pcigart.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/ati_pcigart.c b/drivers/gpu/drm/ati_pcigart.c
> index 6c4d4b6..4825211 100644
> --- a/drivers/gpu/drm/ati_pcigart.c
> +++ b/drivers/gpu/drm/ati_pcigart.c
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
>  /**
>   * \file ati_pcigart.c
>   * ATI PCI GART support
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5bb62c85.1c69fb81.9de38.b242%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>


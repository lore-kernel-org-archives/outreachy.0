X-GM-THRID: 6537549739579146240
X-Received: by 2002:a5b:88d:: with SMTP id e13-v6mr5688728ybq.18.1522143821292;
        Tue, 27 Mar 2018 02:43:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.228.68 with SMTP id t4ls64420ywl.21.gmail; Tue, 27 Mar
 2018 02:43:40 -0700 (PDT)
X-Received: by 10.129.85.8 with SMTP id j8mr15163340ywb.190.1522143820372;
        Tue, 27 Mar 2018 02:43:40 -0700 (PDT)
Received: by 10.129.229.77 with SMTP id c13msywm;
        Tue, 27 Mar 2018 02:14:06 -0700 (PDT)
X-Google-Smtp-Source: AG47ELskgT5SBrCnF7y7H1u+YauF7FJGr0pNI97BOcy7Qse58/22A1ym2XU/Ruen20df+uRkL3pz
X-Received: by 10.31.228.195 with SMTP id b186mr17230919vkh.114.1522142046130;
        Tue, 27 Mar 2018 02:14:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522142046; cv=none;
        d=google.com; s=arc-20160816;
        b=lRmHOmytYxj/FOO/eVJTFWLqo4oElMRbDbRrJzAdv5Itbjab8yYNDk0cU0WRkr1y1W
         Dx84ZFuqcC89Y91WjTGP+T6ns5WtXCljhlF7MK2Wx5ngak9x6/TSPUCtzPMxGKNGYcID
         YQ/hE6wQCclqZXO/dharR/7Rsz+tw8DnDXJ4Hc9j7AYrvebrw66IxJXo8QUM1L4CwKac
         W2YZkuwAPyKLApwpOSfAfd31ONAoVJfvvKv/QpfkKnnrFKew5+U1VNyM6QwewDsr6H4z
         MNJtHvx5phA0QTGvimN91jzFBAEBK2CBr4pVOg7dvrlWSSdfRu8/IM1mKMi1eFOG0K2e
         ditA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=fo5j6+wcAg13jWE8T4OWUV2bENjTphMQ9FelCU+/XPk=;
        b=PdoeZR31ObUzGLU8ylkNXuF/mEgXOiDbsVN9SkKHBw6v6QStpCoQ91jxyYU4E4J8Bx
         cHI8Sbdo2F0FJJy6SQayuEFDvFeNGdWOgfT78LhiiiJUZj+u+DrNDZ80TEbkQ0LF1CoP
         Nm0WTbxmMsL7wqmhFQqxwR7bZobuSNTQDncQvRTdumRxMiiAZ0Gx26VZXK+HIa1NHk2E
         wtV4STyCzTa0jnS0q6l66IaTWhj+rnLW9y5yohISQTQysHJU1SE2rnjwQfyadCouF4Vy
         a2zK6mm5+9LS8slV2uKSigHiI6kxGFywgPIia5a3iSmAR7vwXlAt72fVxm2ifsxgMU2t
         x+wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruIo1CDS;
       spf=pass (google.com: domain of skeggsb@gmail.com designates 2607:f8b0:400c:c05::22e as permitted sender) smtp.mailfrom=skeggsb@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <skeggsb@gmail.com>
Received: from mail-vk0-x22e.google.com (mail-vk0-x22e.google.com. [2607:f8b0:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id r77si32802vkf.5.2018.03.27.02.14.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Mar 2018 02:14:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of skeggsb@gmail.com designates 2607:f8b0:400c:c05::22e as permitted sender) client-ip=2607:f8b0:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruIo1CDS;
       spf=pass (google.com: domain of skeggsb@gmail.com designates 2607:f8b0:400c:c05::22e as permitted sender) smtp.mailfrom=skeggsb@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x22e.google.com with SMTP id j85so12802093vke.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Mar 2018 02:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=fo5j6+wcAg13jWE8T4OWUV2bENjTphMQ9FelCU+/XPk=;
        b=ruIo1CDSZiAWa2oWRUj7F0mHHbYEg0v3uWwjjw+fRpkCXo/Y/nWLOb6fp4Pt6X4/pW
         ClV9o6xLCOeDpnp2UEYTEqmG2lT1ThN4iDjxkbUHk56Di+a4Np/5vn37MUdJ8OtxAPk+
         7SUApDR5YnQpA8duhDHCaRtpTeeMEGGLi5KWGgSR9YmRRf+eSRFjQ7pfIQ2P8O1aQ+QY
         a73U2IuFzCClkcWzhKrR9fz18nmBod4EV5vB2l2e+tAp0Gvpkjcxl3j5nrLorlNH8rFk
         Pjo+DNCpBW0Of5b0WGMzRMc5NUBSo00Ce+fG+kQyFVnBc/U21oQ/iADXIr3aIbL9ZKCp
         +Pdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=fo5j6+wcAg13jWE8T4OWUV2bENjTphMQ9FelCU+/XPk=;
        b=ubX4fHuMr72zO1+1J8t2aP9cKBp9QOgTl7VwheCceHRkkyU91TA6biEhhnkKF3k0nM
         ikpo2bwb0wOzTY2GGMxAgUxuvKlYx7A7bvGnh8Bf0sZAMZjjBeE0A5VAkRtZraXc02k/
         76qJFuOgec3ZEFsarJdhGcupSQivhDZBJw+zVViFzgQC18FJ28A/wX1QRWP+4iP7meUh
         aX04zm9QX5x0t6+PL2lTnEURVGv8mOBSztzhFv9mAb2K2jzDcUDnPpXF6bEtYmSVBSVE
         IV7SwvaNiLgaeSLhJzNJ4aQxebFoRIEAsIRSTmwzV3FdzthtAyuS7vuL9fUgbyhqKy5p
         0MJg==
X-Gm-Message-State: AElRT7EszDJU0MJkH1i40M0gIoiuoAYT6T3KyeEhaWCugkeX7OKyoPdt
	fxMIdNqrgZ/S6yXOgVreSU085cOqZiMa7qnHYaY=
X-Received: by 10.31.114.201 with SMTP id n192mr6658433vkc.70.1522142045669;
 Tue, 27 Mar 2018 02:14:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.137.5 with HTTP; Tue, 27 Mar 2018 02:14:05 -0700 (PDT)
In-Reply-To: <20180327091156.GA23787@seema-Inspiron-15-3567>
References: <20180327091156.GA23787@seema-Inspiron-15-3567>
From: Ben Skeggs <skeggsb@gmail.com>
Date: Tue, 27 Mar 2018 19:14:05 +1000
Message-ID: <CACAvsv5Wzd6yFsweNXRNA93i5UeTX5qrb_xwPOeobqSjhLEMjg@mail.gmail.com>
Subject: Re: [PATCH] gpu: drm: nouveau: Use list_for_each_entry_from_reverse
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Ben Skeggs <bskeggs@redhat.com>, David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On 27 March 2018 at 19:11, Arushi Singhal
<arushisinghal19971997@gmail.com> wrote:
> It's better to use "list_for_each_entry_from_reverse" for iterating list
> than "for loop" as it makes the code more clear to read.
> This patch replace "for loop" with "list_for_each_entry_from_reverse"
> and remove "cstate" variable as it is redundant in the code.
I would prefer to also see "start" renamed to "cstate" with this change.

Ben.

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> index 81c3567..5e56f74 100644
> --- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> +++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> @@ -113,7 +113,6 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
>  {
>         struct nvkm_device *device = clk->subdev.device;
>         struct nvkm_volt *volt = device->volt;
> -       struct nvkm_cstate *cstate;
>         int max_volt;
>
>         if (!pstate || !start)
> @@ -133,13 +132,12 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
>                 max_volt = min(max_volt,
>                                nvkm_volt_map(volt, volt->max2_id, clk->temp));
>
> -       for (cstate = start; &cstate->head != &pstate->list;
> -            cstate = list_prev_entry(cstate, head)) {
> -               if (nvkm_cstate_valid(clk, cstate, max_volt, clk->temp))
> +       list_for_each_entry_from_reverse(start, &pstate->list, head) {
> +               if (nvkm_cstate_valid(clk, start, max_volt, clk->temp))
>                         break;
>         }
>
> -       return cstate;
> +       return start;
>  }
>
>  static struct nvkm_cstate *
> --
> 2.7.4
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel


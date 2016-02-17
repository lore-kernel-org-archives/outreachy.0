X-GM-THRID: 6252320028227534848
X-Received: by 10.182.105.133 with SMTP id gm5mr2595353obb.41.1455731898693;
        Wed, 17 Feb 2016 09:58:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.106.133 with SMTP id gu5ls2105233obb.16.gmail; Wed, 17 Feb
 2016 09:58:18 -0800 (PST)
X-Received: by 10.182.118.169 with SMTP id kn9mr2748754obb.11.1455731898330;
        Wed, 17 Feb 2016 09:58:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id y131si143551ywc.0.2016.02.17.09.58.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id y89so17786407qge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=W1dq58APeF9UC0eRLcCrSxvK1p62iltzER+6XYc8YUY=;
        b=k+7mtLTAxPYOy/q98F99n+dt7gzKqAXgOdHe5NFHfkc/L1QZ8nUPxa4VDqJywraj5d
         jcDOngQiTP0RXfaYL0xoEVjV0GODBy5WVWbLXAi3krWtBoSQe3r9Dq2JrZkBK56VIvJ3
         n+3FWG5Pf1DvYaTfXlKbUNvnHV6ARm8lVF6dBG7FBU2aw+uBfS/+9qnpv3DkoVrrrmjw
         BMGZURB358NdYa8pCjDYkk/bC2O06abWjVJVR/6X6T3kEzORFmhqgqzCOwhQzoHf36ca
         wKevElXYVizlDMCUQPOi6cpSMRvFBjyu53TVpI8/lp2ylpHTdDW+jc6hOFjjGkPRzrvn
         eqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=W1dq58APeF9UC0eRLcCrSxvK1p62iltzER+6XYc8YUY=;
        b=WBa+E6q4ilRgp0YW/4Ee52+pvJ8nmISzQcWyASQoe354fEgi3dN/FEBh7LUlqLMy5B
         pOwd2/WlQ2xMEYZpPikYXK+FVXhZ6MsOMXnFAQRtwmBDaPBHgjzIi78j1gJvKizHmi4i
         dHnI2bg24sAy0HYh5T4UJs2i7ImJ5cG5/m+jEPSJta4jAMjk+wnvbG9R0pZnCdV7KXZh
         U82VpfMYiGVhm8JffDHrFwvMXaz+9vEiD7/xttt+0+G1pI6B+v1o2oruVJQxsXxtxU0A
         BSmkNqkozwhLIte6PxAwOspR5RnFilpOV8Y6Qh8GqOm9G+Sn9WmX68BZwjP84UwN4wcg
         ze2Q==
X-Gm-Message-State: AG10YOQJOF9N9J2k8Xpa6RVBRoTZoqpWXXWPbzCPSIvwNZD1Wqrd/UaSFuH052P1nbaxiIDJDUCST7Nv681CUQ==
MIME-Version: 1.0
X-Received: by 10.140.23.81 with SMTP id 75mr3535693qgo.35.1455731898150; Wed,
 17 Feb 2016 09:58:18 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 17 Feb 2016 09:58:18 -0800 (PST)
In-Reply-To: <20160217175525.GA19663@Karyakshetra>
References: <20160217175525.GA19663@Karyakshetra>
Date: Wed, 17 Feb 2016 23:28:18 +0530
Message-ID: <CA+5yK5G=Y2cnx5Ae629VrY_svCNJ5X1nwSnPvqeQ=K=YMz2J+g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: llite: Use IS_ERR_OR_NULL
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 11:25 PM, Bhaktipriya Shridhar
<bhaktipriya96@gmail.com> wrote:
> Replaced tests for NULL and IS_ER with macro IS_ERR_OR_NULL.
>
> The following Coccinelle semantic patch was used:
>
> @@
> expression ex;
> @@
>
> - ex == NULL || IS_ERR(ex)
> + IS_ERR_OR_NULL(ex)
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 446e4b8..5a32f9f 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -493,7 +493,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
>         md_free_lustre_md(sbi->ll_md_exp, &lmd);
>         ptlrpc_req_finished(request);
>
> -       if (root == NULL || IS_ERR(root)) {
> +       if (IS_ERR_OR_NULL(root)) {
>                 if (lmd.lsm)
>                         obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
>  #ifdef CONFIG_FS_POSIX_ACL
> @@ -1965,7 +1965,7 @@ int ll_prep_inode(struct inode **inode, struct ptlrpc_request *req,
>                 *inode = ll_iget(sb, cl_fid_build_ino(&md.body->fid1,
>                                              sbi->ll_flags & LL_SBI_32BIT_API),
>                                  &md);
> -               if (*inode == NULL || IS_ERR(*inode)) {
> +               if (IS_ERR_OR_NULL(*inode)) {

Hi Bhaktipriya,

I've already sent a patch for this issue, you can see it here:
https://groups.google.com/forum/#!topic/outreachy-kernel/VsK7W2qZqCY

Thanks,
Amitoj


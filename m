X-GM-THRID: 6392494565268389888
X-Received: by 10.129.118.12 with SMTP id r12mr2622193ywc.169.1488369835354;
        Wed, 01 Mar 2017 04:03:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls1311387ota.23.gmail; Wed, 01 Mar
 2017 04:03:54 -0800 (PST)
X-Received: by 10.129.102.215 with SMTP id a206mr2450154ywc.141.1488369834779;
        Wed, 01 Mar 2017 04:03:54 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id a17si2488778itd.1.2017.03.01.04.03.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 04:03:54 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id 68so4692810itg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 04:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jL0WeqpVLUYmRYfrEu3lMu2nC4/rfOodyrJvMmMVc54=;
        b=Ro7udeQ+JPTHraS+Pf67gqjC46oZa0V0cuUC7DIh8YPpY/B1cgTKW+ShW8nGWL3o0E
         NtbC7OY7dOk9mE/9cPAB9tRh/hszpthSbaSoaxQDzt9EaKe5psB0DTLNSe8vmDAGTxH+
         TS9/6cbBSh0W5MSdx5LwMDvaxRiTp1kQWjwQtW0Ler8NttKtWLtjrW+AogZliKY+2KtR
         LkPs8Lt7/JU+hY7K3nJojNSZwGQnBkJTR3E/OKTo3Lj/l94D74xl+V7swqMJzp5O7ri/
         Pkm/OtKI21voE94TCN27AGmmoFcyjt4vqKJPDRr+FEXQQVPqziOSdZnkjlTjRrHZW/4T
         y21g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jL0WeqpVLUYmRYfrEu3lMu2nC4/rfOodyrJvMmMVc54=;
        b=Wnqng1equucFmZ28WuwhfLHaVUQduhUa6bcPot+sUa0EHNWNB/o7OzCO8+jmFrSe14
         ht8tBoVA4XLqtunXXxOXFAEMeM+NlkqUfrpHtqDrKCG0nsd/frW4DcgeHkGG9UlecRKD
         m2clb4u3vGkdXE/UHgaddegTRvf+gKcdPHt6JrYjn86tyfDuD4ejeOO7H9hlGeQqGOi4
         /EQIeir3tpI1R7PirkQCK+IlIVAjFbpMWs6f4iAFYPPyBU0jG0RmqYjlucmz8z9HO9qJ
         mX4f66S9HGEJ04tqPNZVXS49yd/P4VTlUqIMWjonhUKW12vS+dXo0SCKPm7g5Qvd5vky
         acNw==
X-Gm-Message-State: AMke39k9Ir0036t9HscIV798tDbGanxZyvsSrOrDjqk3q7xU8J3YLfXqFfmR+xBn4T/sWG6bSd7gwmv2MzgAPw==
X-Received: by 10.36.146.134 with SMTP id l128mr3775909itd.19.1488369834499;
 Wed, 01 Mar 2017 04:03:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.138.230 with HTTP; Wed, 1 Mar 2017 04:03:54 -0800 (PST)
In-Reply-To: <04783e886f993597ef3b14f2602864884e0ac7b7.1488367580.git.narcisaanamaria12@gmail.com>
References: <cover.1488367580.git.narcisaanamaria12@gmail.com> <04783e886f993597ef3b14f2602864884e0ac7b7.1488367580.git.narcisaanamaria12@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 1 Mar 2017 14:03:54 +0200
Message-ID: <CAEnQRZDOYxCbRrKv4HaKZdFjc1bw5Sx5WYjZ9VzghRb9juKh4w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: vc04_services:
 bcm2835-camera: Moved condition outside the for statement
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, f.fainelli@gmail.com, rjui@broadcom.com, 
	sbranden@broadcom.com, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 1, 2017 at 1:44 PM, Narcisa Ana Maria Vasile
<narcisaanamaria12@gmail.com> wrote:
> Instead of computing the minimum value in the for loop, I store it in
> a variable.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---

Hi Narcisa,

Please use the imperative mood in the subject line.

e.g:

staging: vc04_services: bcm2835-camera: Moved condition outside the
for statement

also, this could be more specific:

staging: vc04_services: bcm2835-camera: Move min calculation outside the loop



 Also, make commit body
"impersonal".

E.g: ...

 Instead of computing the minimum value in the for loop, store it in a variable.

 https://chris.beams.io/posts/git-commit/
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index 53e275e..347d8fff 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -1526,6 +1526,7 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
>         struct mmal_parameter_camera_info_t cam_info = {0};
>         int param_size = sizeof(cam_info);
>         int i;
> +       int min_size;
>
>         /* create a camera_info component */
>         ret = vchiq_mmal_component_init(instance, "camera_info",
> @@ -1541,11 +1542,10 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
>                                           &param_size)) {
>                 pr_info("Failed to get camera info\n");
>         }
> -       for (i = 0;
> -            i < (cam_info.num_cameras > num_resolutions ?
> -                       num_resolutions :
> -                       cam_info.num_cameras);
> -            i++) {
> +
> +       min_size = cam_info.num_cameras > num_resolutions ?
> +                       num_resolutions : cam_info.num_cameras;
> +       for (i = 0; i < min_size; i++) {
>                 resolutions[i][0] = cam_info.cameras[i].max_width;
>                 resolutions[i][1] = cam_info.cameras[i].max_height;
>         }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/04783e886f993597ef3b14f2602864884e0ac7b7.1488367580.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.


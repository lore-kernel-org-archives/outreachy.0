X-GM-THRID: 6807107593039773696
X-Received: by 2002:a1f:5c84:: with SMTP id q126mr13064630vkb.5.1584907766745;
        Sun, 22 Mar 2020 13:09:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ed4b:: with SMTP id m11ls168769vsp.1.gmail; Sun, 22 Mar
 2020 13:09:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuYKC3Jd54ktAleccCbWLAd/Zh+Z2w2CKR+htGB57pwnhZGz5cZVgHVqx8v2B8tXyp/BhOL
X-Received: by 2002:a67:33cb:: with SMTP id z194mr13977572vsz.155.1584907765517;
        Sun, 22 Mar 2020 13:09:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584907765; cv=none;
        d=google.com; s=arc-20160816;
        b=TBYf+gxfjz1twCvlLCj2oGqEZnCb7cXggtDHJxqHCSvSAsOAO48jFljgAtjyolc5h1
         0U0949+JbzEjgTQxlk60pP4YtvZcru2gEG2Tg87nrHuHuSUa1woMfcr3ukjsnezyfkHh
         /wZZ9o1xIeEVqpGtjwlZE3k161DfMc8LBfjdkHEoUa288knU0EtUcEeqqtD7/476Tytm
         Yf64DyzKmwEw8i3+FshDVto6dJrvPV0vUbUe4EusybX+WomQ24hb69RhAfUSrZrctY02
         18Pp8wbl7vj27ItK8ukURxQo9UUof0MqlLQAno3glz/xch/CJmc0+sYcIbgK87EziK7M
         UvGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=KmIZRwhvrvUr1FvfipwlGkRQIiD+8XGpsYRGt/5JGAY=;
        b=A0nfQ/bemBtRp4pK5xRT93d+Bml8GkUhf96AQe5Gg85Mw7NRlDp4mQfoGmWhwR9NtX
         Dv+JbJ3VJEpEgHI6oX456LR33G9+REBr/UFDGojF2RqzLuTLJkku5rOhxCLn7idOxCKZ
         AD15JA+N9LEBJq8Mhyw9JaORyjqXbm15A2k2AExMbmsHn0c2AQPaBPFGAWdaHFRMdB6q
         zuiM8QYySKx9YkfBB7rqWjGXUDeSmE9TI9O4kiILQM3FyKLZm7JFMYlC3xL5HRgsLfc2
         RKAG+ZtvplhsHuJDtzUqLHk/OmUULSe/aiMqWSX7JtRU5pEcMt6DAOt/6ZVbFY1ZOhlB
         KZDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ttifd8wH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h6si330626vko.4.2020.03.22.13.09.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 13:09:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ttifd8wH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id l184so6391601pfl.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 13:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KmIZRwhvrvUr1FvfipwlGkRQIiD+8XGpsYRGt/5JGAY=;
        b=Ttifd8wHQp+2SZbzxRlvd1HAyjdbnWLf0NvJh99Vyw1X+o4shVL7+CJ5Jrbnqt9ymu
         UWxievh16qOp0XW+17PVgKUXMlW32ekDgxeppCGsX/b8PHnQyXUEQTMf96Pchvg/zELR
         K6dVf8mhSAmfrwL0xm8wj3cj01f5/fjJ4etAbTdSg3c8X+zJcZvVIyqOgaV17Xo+8Xp4
         vEilc4XbFTkMYE7jJUUSQGxJliAvHgv/W9MJd82EjRhFttmHDvnwqcPcWCnkNT+jiXUa
         FmXobevdJ0ANZOkiwA8YH1q3WQXRQWkDaBIu+BWaLRfosNhYgZIEZ/+cGa4df3zYxD6t
         kHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KmIZRwhvrvUr1FvfipwlGkRQIiD+8XGpsYRGt/5JGAY=;
        b=k5zR8TrhvGUvrEHeTDw4t6I0wl0sNcb2mKAuXR08nbxvJy2MO5+W7IgoxVd5XGH8yf
         gJMql4he1g+sartxRjmkusB9EsIjG6l1hizohmFITg1OtMTJ6TK65kqPlIdtNaIwYtmg
         gd7YfCCMw7L00Zh3St9XIJAIuJEMf7Ldl7wXLp/0nmC3XcHAVJXLoBmhmW0SpY/bJufj
         NWIsDTRrSwnIJG57WHT7L/1pa1OWdGqSTgBaMSDhObIH9Ey+4BCV+vY3hhBQt9i+adL1
         u/fCILlz001Hif1h9SvK+MwNt6txcJ4/ZkRpZ4weSUuqJSHdYRQ2/iuXqyIh/cFzZmbu
         8V6g==
X-Gm-Message-State: ANhLgQ3dyrPgJwdt57oPPbDYwHjrHqZ68QcuHtxqXRO6JQqaKh6oIEW1
	OkDsgcxC+laNq0O5JQxfTs1vPP+F
X-Received: by 2002:a65:4d48:: with SMTP id j8mr11566785pgt.144.1584907764361;
        Sun, 22 Mar 2020 13:09:24 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id r64sm10264666pjb.15.2020.03.22.13.09.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 13:09:23 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:39:19 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] media: staging/intel-ipu3: Reformat pointer initialization
Message-ID: <20200322200915.GA14687@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat pointer initialization to make it more readable as per the
coding standards. Problem detected by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Changes since v2:
    - Unrelated change to be removed from this change and to be sent as
      a separate patch as advised by Julia.
Changes since v1:
    - Correct commit message and description as advised by Stefano. Its
      pointer initialization and not declaration as mentioned earlier. 


 drivers/staging/media/ipu3/ipu3-v4l2.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 569e27b824c8..097c10d9da2a 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -1013,8 +1013,9 @@ static const struct v4l2_ioctl_ops imgu_v4l2_meta_ioctl_ops = {
 
 static int imgu_sd_s_ctrl(struct v4l2_ctrl *ctrl)
 {
-	struct imgu_v4l2_subdev *imgu_sd =
-		container_of(ctrl->handler, struct imgu_v4l2_subdev, ctrl_handler);
+	struct imgu_v4l2_subdev *imgu_sd = container_of(ctrl->handler,
+							struct imgu_v4l2_subdev,
+							ctrl_handler);
 	struct imgu_device *imgu = v4l2_get_subdevdata(&imgu_sd->subdev);
 	struct device *dev = &imgu->pci_dev->dev;
 
-- 
2.17.1



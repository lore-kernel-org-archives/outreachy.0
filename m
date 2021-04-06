X-GM-THRID: 6948024355480666112
X-Received: by 2002:a17:902:d2c7:b029:e6:dd9e:d652 with SMTP id n7-20020a170902d2c7b02900e6dd9ed652mr30044967plc.1.1617729703913;
        Tue, 06 Apr 2021 10:21:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls6124939plb.11.gmail; Tue, 06
 Apr 2021 10:21:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxiaNCiWcbuN736kXWcc2vLzzPDl4OtZnPl2X8Q2d+Mn5S/9FRDD8y0jms8os0r6Hks03Ft
X-Received: by 2002:a17:90a:b794:: with SMTP id m20mr5210381pjr.152.1617729702740;
        Tue, 06 Apr 2021 10:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617729702; cv=none;
        d=google.com; s=arc-20160816;
        b=Ehk8CDadarZsK2WSaqfFf6elbIs0Vom9aYDe25hEGOiMGifLrU3PDn6fqJmkiK/Rbp
         SsTQnb7wVS7ueb4ZV3G/fZza3l5B1PLA4JGWmvFLtE5I8vh17SkXN1uPm/GDc+c7lfyL
         SYn5gjyJ1O/eOOUDOiCUaBoVk59d0K+tSzG5Gdv9kLB88TSON4Lfz8/q47ALMMeg/Rkz
         lT6lDvOPk3jQim/v4s1scs6npKYJuiJF2U6Rjj7AoJSEa33AvE6DKytT4UzaF7mzV/92
         UDPmwSPPo3HMUUeCgcKic1TbYbTADItG7DBQjmoNQyuFgLsovlZC/0Z7uWOPvbFkf4fL
         0/GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=7zn/0KQajpECvse4bVnzpSSq+ifkaibixR9PbYpEe8s=;
        b=U1atzbiuhAYsc5xahUScR+UUFdQwElpvOhAx/YypK4xpcf25FCGmUdTdLO1NKjT39d
         +mLEgUR2KiWxj+YlA41F4WFhsgYZ5CNoBuhzepMDTwwgGF7grhU3AAcKvH1Njm4sdE7x
         hK/Lo9C6sXQElK54p79r9IGNhd4SoOjeDsBQsJKeIY4/KJI8LWsE3vfZy5KoISG0/frC
         R8peJsxSoLVoAeBaVqi3ZsJhNOs0UIMn9AWHRIw7HRrLNgf69dEWKhZ5XmPGRAhxJUHg
         HVD/V4zqO6jh91p1+BiHjXdn0Wz+9keFf6NadkM/KXbIb7YEOCL1cwUICkcB1o1UXBO9
         /nbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.130 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0130.hostedemail.com. [216.40.44.130])
        by gmr-mx.google.com with ESMTPS id k8si270612pjq.1.2021.04.06.10.21.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 10:21:42 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.130 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.130 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf15.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id C3182180428ED;
	Tue,  6 Apr 2021 17:21:41 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf15.hostedemail.com (Postfix) with ESMTPA id 601A2C4182;
	Tue,  6 Apr 2021 17:21:40 +0000 (UTC)
Message-ID: <7d7be8bcc0e80d826083890ed7791070ad25e603.camel@perches.com>
Subject: Re: [PATCH] staging: greybus: Match parentheses alignment
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Zhansaya Bagdauletkyzy
	 <zhansayabagdaulet@gmail.com>
Cc: johan@kernel.org, elder@kernel.org, greybus-dev@lists.linaro.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Tue, 06 Apr 2021 10:21:38 -0700
In-Reply-To: <YGxhrLZPIPjILWUH@kroah.com>
References: <20210406124259.GA96537@zhans> <YGxhrLZPIPjILWUH@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 601A2C4182
X-Spam-Status: No, score=0.10
X-Stat-Signature: c6sadr7ectuaniqta9h19aj9ajc7unsy
X-Rspamd-Server: rspamout04
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+jIsA223eKF3R6VcYnwZUQdsfBWilGY3I=
X-HE-Tag: 1617729700-769365

On Tue, 2021-04-06 at 15:27 +0200, Greg KH wrote:
> On Tue, Apr 06, 2021 at 06:42:59PM +0600, Zhansaya Bagdauletkyzy wrote:
> > Match next line with open parentheses by adding tabs/spaces
> > to conform with Linux kernel coding style.
> > Reported by checkpatch.
[]
> > diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
[]
> > @@ -378,8 +378,8 @@ struct ap_csi_config_request {
> > �#define GB_CAMERA_CSI_CLK_FREQ_MARGIN		150000000U
> > �
> > 
> > �static int gb_camera_setup_data_connection(struct gb_camera *gcam,
> > -		struct gb_camera_configure_streams_response *resp,
> > -		struct gb_camera_csi_params *csi_params)
> > +					   struct gb_camera_configure_streams_response *resp,
> > +					   struct gb_camera_csi_params *csi_params)
> 
> And now you violate another coding style requirement, which means
> someone will send another patch to fix that up and around and around it
> goes...

None of the coding style document is an actual requirement Greg.
It's all rules of thumb.  Useful rules, but not hard and fast right?

To me, the biggest issue with this code isn't whether or not the
code is aligned at open parentheses or stays within 80 columns,
but is the use of 30+ character length identifiers.

Using identifiers of that length makes using 80 column, or even
100 column length lines infeasible.

Perhaps seeing if include/linux/greybus/greybus_protocols.h
could be updated to use shorter length identifiers might be useful.

The median length identifier there is ~25 chars long and the
maximum length identifier is ~50 chars.





X-GM-THRID: 6250792352904904704
X-Received: by 10.182.137.193 with SMTP id qk1mr11384833obb.50.1455470200544;
        Sun, 14 Feb 2016 09:16:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.229 with SMTP id rf5ls1316191obc.22.gmail; Sun, 14 Feb
 2016 09:16:40 -0800 (PST)
X-Received: by 10.182.19.164 with SMTP id g4mr11874595obe.42.1455470200195;
        Sun, 14 Feb 2016 09:16:40 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id g136si1774676ywb.5.2016.02.14.09.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 09:16:40 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id y89so96783135qge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 09:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=sZO23FDY16mqSyrvDLaQyDrWEehjq6AcGaRHaz+rwzw=;
        b=b1Z6O+5pURLxv464gE3Tf0ZNWPNQj/C8iERrMvYvQrUsEM8bK8Jwk77u0RnH9puLj+
         +F59lctCh2mGOYWscJMi/dZ0Edq4RgbbycXFoE+NW4zbP3eCxgyc+wHHfrvZRNYJVn/S
         wpgUNzEumRanRCp5aJKnTijMlvF6vYbHU/xzAmRbT9vjlwMayZit+yYDD+KhXHsaPR+x
         WGI172NIEuUQDNu/S8ndb/8q2y+7MU6X9lDw16z8ygfhDBeb8bob9IxT9KPyf7AL3rf7
         2COl+4X+GGcT6+Yk1L7Alre4L8V3fIDKY3+CRzD8jS+W/YsJjb+E8OX4v4z5iy2bV1F9
         pWhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=sZO23FDY16mqSyrvDLaQyDrWEehjq6AcGaRHaz+rwzw=;
        b=DXyeDtLVVTEysQpoWC2LBPGJlpHCyMY/jpCG22hQ943oYH86a8I8NUy69nTcgXpg+t
         NMmdW5Z7Dgf5iCAJSf5jGyAs6Zv1DH3N09RLws4hbDLzme/rpDNlqBnD6krg5+xUhXXJ
         Zzi2JmLraF9s8BK4HxwR1CUr73RmWYB7lgF5Tal9rFcFijpDiBflNuBQ77hMZi52eUYc
         hCGHkl1mgtsXbYOWSpnVVKporhZLg57axCoGwRSN3PXxVWeshgk1a+lvVvAxhmCpYf/T
         2n99F8eOk04/QerAC8gQh+JVLh8UgYBmZ3NKdji4hidlJRSQ2hHSB+/VgYY594iX6waw
         k/Rg==
X-Gm-Message-State: AG10YOQ003RR/J+8p/C5YT5Fh0T+XKs0AdfI2bXVdfXj4PDz9Wbqs0PBS8kzHHpnC+RgBL1zYmeDPoLNCwJuiw==
MIME-Version: 1.0
X-Received: by 10.140.233.85 with SMTP id e82mr15700016qhc.86.1455470200021;
 Sun, 14 Feb 2016 09:16:40 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sun, 14 Feb 2016 09:16:39 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602140820560.2039@localhost6.localdomain6>
References: <20160213150641.GA26097@amitoj-Inspiron-3542>
	<4143065.OBkRWe7lv3@wuerfel>
	<CA+5yK5HTPxk9EtTgUki+47-1G0fhHL-t1YUvaeeha_Ltd=3F9Q@mail.gmail.com>
	<alpine.DEB.2.02.1602140820560.2039@localhost6.localdomain6>
Date: Sun, 14 Feb 2016 22:46:39 +0530
Message-ID: <CA+5yK5HYMRvS0u_021v68oJnHciYh5MHboO2EwoCrAs+QzRM9Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Use IS_ERR_OR_NULL
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 14, 2016 at 12:52 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> You have to check all of the return points in ll_iget to see if any of
> them could return and ERR_PTR value.  This may require checking in some
> other functions to see what values they return.  If none of them can
> return an ERR_PTR value, you should just remove the ERR_PTR test.
>
> julia

For one case, ll_iget is returning a ERR_PTR value.

Amitoj


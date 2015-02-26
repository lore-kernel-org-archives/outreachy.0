X-GM-THRID: 3455056871424
X-Received: by 10.112.224.12 with SMTP id qy12mr84551lbc.10.1424941882249;
        Thu, 26 Feb 2015 01:11:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.72 with SMTP id h8ls8644laa.46.gmail; Thu, 26 Feb 2015
 01:11:20 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr1138219lbw.4.1424941880802;
        Thu, 26 Feb 2015 01:11:20 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id l8si1465152wia.0.2015.02.26.01.11.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:11:20 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id w62so8665125wes.9
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=a3Fpjw/jY6a+WsY+qU5jNsGz49Ijy7P7XWsZCgLxSeg=;
        b=RmJ6sHvxR9uHWwy/8D+Vx3m829IABAxBty+86Ik49uIqG1n6c9IPFZFdxWKbBjxgf1
         9t7fAIZbVqGYpDhoxMgkP/1poy+FopdihNDh6SzVfHSsYJu0T3SGchXTp7kPeGUJT0EB
         gC6SgqHoZ+C98RW9mV4INvnRlJqLqGzognuccMnJ801S3OQKNDr+/tsbEDTqysRxITwf
         VO6Nh5/2lWUJeMD8GuZHyHEKRihbV7+PANgcBbyZbmwaoDqpA5In3bXzcoP9QbXOGcJz
         gj51qY90kxt2X49MeCdv+7UR10WXRkZZYc82GJpuH/BDQ94yMRrtPxi/bhwyLDBq1kRp
         Q/hw==
MIME-Version: 1.0
X-Received: by 10.194.94.1 with SMTP id cy1mr14030483wjb.127.1424941880706;
 Thu, 26 Feb 2015 01:11:20 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Thu, 26 Feb 2015 01:11:20 -0800 (PST)
In-Reply-To: <1424902101-9163-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424902101-9163-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Date: Thu, 26 Feb 2015 11:11:20 +0200
Message-ID: <CAEnQRZDRu6pKFp0Kfkrrzb+sVTGZrzNH3DJwc-R43g7KOCNDOA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: remove
 unnecessary break after return
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 26, 2015 at 12:08 AM, Melike Yurtoglu
<aysemelikeyurtoglu@gmail.com> wrote:
> WARNING: break is not useful after a goto or return.
> Remove unnecessary break after return. That was found by running checkpatch.
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

Looks good to me.
Daniel.


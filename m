X-GM-THRID: 6202672545102036992
X-Received: by 10.180.91.233 with SMTP id ch9mr3099755wib.4.1444667186747;
        Mon, 12 Oct 2015 09:26:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.164.77 with SMTP id n74ls503493lfe.94.gmail; Mon, 12 Oct
 2015 09:26:26 -0700 (PDT)
X-Received: by 10.112.190.74 with SMTP id go10mr2646677lbc.9.1444667186144;
        Mon, 12 Oct 2015 09:26:26 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id i8si373113wib.1.2015.10.12.09.26.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 09:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id gb1so56877117wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 09:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8XXdhWUkuwxBdk09Ls6JTbluGmrd4RpfiabEVP50w2A=;
        b=K186wVmp+thwGjQj/h8mdEQOLaAwRMWE29jjutmwujBBjsLJiFiBIqm+nQeV5G+mzk
         h3hpgRbds0MRn8qfMtFwe91eyr6nXsyILwcpvQkMrWLGN6iuRKDbyqFZT2b6QUNWnfTv
         6oHsFlqq3PiSKp9H1qr5TGS4kWNSsxM9mPWINQPANC6RmIwYcJdNVi8AbZ55HCf+hTNO
         OwaN9jKhwbjAd0h/dSixsclVOCEe2y3Jazu+96BCRna+FBg0eqr4kpMZe0U27Ae+DaHB
         h3e5BnRYayxKCw8nnYcHChV5LNJ9yvoryp5ijK9TgzDiyB575kJedoypYLTC8MXCkDyS
         6+Tg==
MIME-Version: 1.0
X-Received: by 10.194.236.200 with SMTP id uw8mr30119764wjc.126.1444667185965;
 Mon, 12 Oct 2015 09:26:25 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 09:26:25 -0700 (PDT)
In-Reply-To: <d529e839c73bfd1156a2b6ac578189b641efa01f.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<d529e839c73bfd1156a2b6ac578189b641efa01f.1444419393.git.ciorneiioana@gmail.com>
Date: Mon, 12 Oct 2015 19:26:25 +0300
Message-ID: <CAEnQRZDhbCc24eGxWosk_7K_PB6fSnDkG84munfFqpeydgO5rQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 3/9] staging: iio: adc: remove
 explicit comparison to NULL
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Use !condition instead off condition == NULL when comparing with NULL
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>


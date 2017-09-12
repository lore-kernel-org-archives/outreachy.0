X-GM-THRID: 6464947819093426176
X-Received: by 10.46.91.21 with SMTP id p21mr837737ljb.24.1505249040027;
        Tue, 12 Sep 2017 13:44:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.66.88 with SMTP id p85ls175680lja.44.gmail; Tue, 12 Sep
 2017 13:43:59 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB6lxPaSnE+TfbdQbznBIpNgRnMAnJcXTzTBL3B3ocxHQ1axYr5J+X6LuJt5fGPoYzUleyt
X-Received: by 10.25.40.20 with SMTP id o20mr1334633lfo.41.1505249039128;
        Tue, 12 Sep 2017 13:43:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505249039; cv=none;
        d=google.com; s=arc-20160816;
        b=XSoyTwJzBIlRsBLdixz5iOBS8b3ih/WIjgN2fdxuwoEhc5Cp4L45ry1JyOOwCUmBee
         qQk9AtcVrou30wyggKiCdwLqSSBGvUBbVSUgRxifaOkyUElmwtP5FwooanIjx4/v2RFz
         VpQJ6kmnlEke9jUcJRlgqC2AIzPG34cbUwq7Os2NyM+N0znold5j0/VLsA28OmDzvKoS
         FwDQ+ynN76iw0KP4ieLtgKuelXNw/SlAWtuiZ1SgPFM6Y8P86oIDXzM5nZx4327JBtkO
         Dibqt8g01lMdIbkSn0XrtacBKmkFCzv+shyC/VBKIfyEDbAIS0R8VrSgiNHIdzATkpdT
         Je6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=fxpzL78eibkS6D+f2R8Z3UL1TjmFzLgpLKKIjP6UAk0=;
        b=b54IMAupTjL9FM0BIokvSpu6b5rPliQgN+aiM26rVWR7vQ6p5rRfbk/Mt6Bvhu5q2B
         OdFA+u+uHvIx2+QfQ6djkknn2+KIk5rHDI6v2KJhoM76kCt4+/phPsOkeANmF0dwcwuF
         baWrKbQ52FhsmhWJbkb1hiwDc69p6H5g1GeMhENwKP5Mi+8elpv0cJrc7dhMTrlVKVi1
         LXazSDNBR/mFHtAn7P1H3KOU9RkVwiNp9Q0qTIT1KQqXKe1aHAL62NskqZViRsIH+Dyn
         E4YaDfv4mgytt/8idVr+2hxDTWs8NzwI/AjtOyHaeTN51sd99NIJ9wumA9VDLywMNp4Q
         z0Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r3si790326wmg.6.2017.09.12.13.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 13:43:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AD52BABC;
	Tue, 12 Sep 2017 20:43:57 +0000 (UTC)
Date: Tue, 12 Sep 2017 13:43:56 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/3] Staging: vc04_services: Remove commented lines
Message-ID: <20170912204356.GA31080@kroah.com>
References: <cover.1505234866.git.meghana.madhyastha@gmail.com>
 <6f42903a2604ac3e057e92382fff0ecff839ccc3.1505234866.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f42903a2604ac3e057e92382fff0ecff839ccc3.1505234866.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Tue, Sep 12, 2017 at 11:23:34PM +0530, Meghana Madhyastha wrote:
> Remove the commented extern declarations
> as they are not used.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchi/vchi.h | 2 --
>  1 file changed, 2 deletions(-)

This patch also does not apply to my tree :(


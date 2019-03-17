X-GM-THRID: 6667274731711889408
X-Received: by 2002:a17:902:204:: with SMTP id 4mr3987314plc.11.1552820548911;
        Sun, 17 Mar 2019 04:02:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls5292709pgp.9.gmail; Sun, 17 Mar
 2019 04:02:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQ1+m5s4WwuL0H506oQWszbFBaOZGeV3FiAa8CMR/qabHsiPOfsPUvwphqw2eHwAEaQ9oG
X-Received: by 2002:aa7:8443:: with SMTP id r3mr1567033pfn.41.1552820548406;
        Sun, 17 Mar 2019 04:02:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820548; cv=none;
        d=google.com; s=arc-20160816;
        b=aMIoMuUE2Ecj1gBwa+xIFztTuHrJq2X3SJRWbm/9jp3RlF/O909m0XTNXomvxtdjbC
         2Fu/8oEQG+ImHtWQps2a7qXvz536+yWko+Wcohwz71mXbyF1kTNgjNuXY9fcK32KgAlm
         ktdGzvQHOn2Uu8og1w36Q9fl6hnYZdIdcg+AXd/QqttOxTItn6Sl+XJMQ3l4NqbWqR18
         V8G8xhxSbF16aqpqCWziIOMkamSQWhX8UmbP8eoaip4/Y/lKp7v4zc8VZ+DzuNFmLj/s
         dVOXa2e5RlwLx9UosAjFkjF6IPty5luNsELztpPTnH79BjjQoL3DqO3xAZLKvnhvz1ec
         TRew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=IM6IKiNa38xBFkHzzHt6IMgky3hMtWu8WIJJrEe/ho0=;
        b=D/LGI7NsQ0JI8NtmZJO3uqrGnkmhv3/curnOEwoYT9qGKpWzJrNuzmTL+J7/VfcNA9
         BJZunk8Fo72q09BycMh2T7u83V274sHWH7fjFM3AMmTqpxr1zMjgVM6LPihiVeUPLOSb
         hxMVp9L/rWYxioePmUQ+KI6WXgZHUjlpz+MPzTH4DcbhxYY/inRONCSfQ2tWFUl6ESo8
         zs/9Pm4tGnUUdadAs2pgPaoDtfpSCtUArqr7KNuPPJ7mGRxqhMNPMksxvGx/aolZqDVZ
         uyb1PN7CdW4PmR+IJHEO1IGImAXZVveChGiT0IcjlzjBc2pKttw+pnP1uKOEmeSy4Rbr
         tP3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VEw+fXz/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k70si351936pfc.0.2019.03.17.04.02.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:02:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VEw+fXz/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 936B921019;
	Sun, 17 Mar 2019 11:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552820548;
	bh=IM6IKiNa38xBFkHzzHt6IMgky3hMtWu8WIJJrEe/ho0=;
	h=Date:From:To:Subject:From;
	b=VEw+fXz/UlfzmBam2NEALmSVvafTyl/je17WnB7XvTlI/9A/YvxKxPWfWaB5fCQSq
	 037cSLrKPnYkjaQpbRIl8mJH+qjJzRk43me/wKMNHBruKOpzzE2YPTBlnXmcZlMTru
	 CldRce0T3SQAhFmKdRfobtDMRzJHMWD9x7YQzSDQ=
Date: Sun, 17 Mar 2019 12:02:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on again.
Message-ID: <20190317110225.GA3379@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

I'm also back from travel, for a week, so my responses should be back to
"normal".

thanks,

greg k-h


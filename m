X-GM-THRID: 6951285172448788480
X-Received: by 2002:a05:6830:22f9:: with SMTP id t25mr1222167otc.174.1618472200543;
        Thu, 15 Apr 2021 00:36:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:210b:: with SMTP id i11ls1169765otc.1.gmail; Thu,
 15 Apr 2021 00:36:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxihYunDdlAcND02G6APQLs/O7jYpQgPg6YOq9QCuQdHMIZA3Jh1/IUJZ/+32qo2jxKA5BK
X-Received: by 2002:a9d:60c7:: with SMTP id b7mr1669861otk.248.1618472199812;
        Thu, 15 Apr 2021 00:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618472199; cv=none;
        d=google.com; s=arc-20160816;
        b=E73OrdDS1o3ahqGVu0yI2Jld82efQo4dhNEJyagOq4UZyrnMLCzjqCuZPFF70QcbJ5
         haxWnP19DgcXAjD38nrlvOWs7Cpwsgq7OPM7JrDcNOA6RLH8hZLtNFAb05tb4VQ30c8d
         AW5DRRsupWQsJmuKgQP0Jna8j0+b/oJ93E/68rxx1eBqXeN0Omy4lMKAdqAGL7AAIK6H
         cEGNLUhqSnxhI9xdB/ycoWSOpA+JJDm530gNuCApEm4ICoK1TEDkV6mvfd17tNEbOVWH
         zlsIwJMmr+ZXTr8s64ZE/QTIBmvucS4Hp7iHqKYdhPl7m8xjE/zxMMJWznxtZeaYQpAs
         zFpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=FFe5KBaojcp/aV2G4pPWs5ItmVIvcoPF/IwI3cAQ2FM=;
        b=Y1evFvIIDfN3tjiafdeLkIiA3N1DiPMjOPkOWPX3PmuCn653dG/Kcc4hy0co3fI8hX
         ywjSxsb1wtuOgDMOx2l9ceVAdQ7P6lDuUBJOn4GHcROyIYmeqtoYqW0H/YZCXSaQIYEh
         hkVO86sa1/OydGxxZ0oCzVZzC4QETQBJ+RuY5RH04Jv+yGFY+0jUkEuf4R8bHHCYHNNx
         D1Rox3P44hhtGtfxuqChvRPiTQOqt0t5W0VbbMwPNFnSGPlSf0jsUGdUMeN/jU60d0ac
         Ytcf81zHAeHJxgwig+VCEQwemC7vbuls7JoR8cp3ZCYDtygWaN3n5eIZh+TjO38JKHRL
         jWMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=T+Dg7Qwl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w4si125722oiv.4.2021.04.15.00.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 00:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=T+Dg7Qwl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F6C06100C;
	Thu, 15 Apr 2021 07:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618472198;
	bh=3ZDo3OJKgctwjXZbNXcJndsZogVr3N3m0y2KMfwsUSQ=;
	h=Date:From:To:Subject:From;
	b=T+Dg7QwlWa+go71uwJNlmPz7GFsKWHcLzPLdho7Pa8UJUoJe0rKzactZfKZLHayeK
	 CNACiLwwuZ0eS8ihZcFSta5GyKyh9FW+4n7sPO3RJiT7DAAnH7l2YTvWubx6N0EBwb
	 WxHWdmCAuexmxuzi1d5qKU0bvhvnGYCWxU9blLwE=
Date: Thu, 15 Apr 2021 09:36:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on yet again, and small change in
 process announcement
Message-ID: <YHftBI7qq+Pw6CcL@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, or that it needed more work, and
please rebase and resend it.

But note, my staging tree is now "closed" for new changes like cleanup
patches for the 5.13-rc1 merge window.  Please feel free to keep sending
patches, as they will be reviewed, but for a few days I will not be able
to pick anything else up.  After a few days I will start to accept
patches into my staging-testing branch of staging.git, but they will NOT
be merged into my staging-next branch until after 5.13-rc1 is released
in a few weeks.

If anyone has any questions about this, please let me know.  For the
most part, continue as usual, but note that anything submitted now will
not show up in a released kernel until 5.14-rc1.

thanks,

greg k-h


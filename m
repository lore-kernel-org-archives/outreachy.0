X-GM-THRID: 6808898651661795328
X-Received: by 2002:a9d:2056:: with SMTP id n80mr9367553ota.281.1585572660054;
        Mon, 30 Mar 2020 05:51:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls6485456ots.0.gmail; Mon, 30
 Mar 2020 05:50:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs+GuuL5w7EwoBjQZBdRZu3KIFBjoa0rRR8Ypi8uRJax/GuODm35iRDCRKTIqkKkDWNE7qm
X-Received: by 2002:a9d:7a8:: with SMTP id 37mr9370325oto.209.1585572658961;
        Mon, 30 Mar 2020 05:50:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585572658; cv=none;
        d=google.com; s=arc-20160816;
        b=JeV5VhdeYB2M0VWAJfwvK+ft2sOroDH/ZKSBGdcZXsuCbgEO2lsIHzOxRDEUa5sqzy
         WVIg+KBgkxNCCpAAGibqj2IDlEvv0YEd25v680Tuc7omFfoS48Mldgi7+KEdJ88uX2x4
         9e44jzznsclxWu+7Ingug+WFoPiFkNbPO50/MTX+PZgNrERkpn6i5iF5YrxlQUSDBCsq
         C8jmBCjPSPh0mm/q9Bzm/pajRNFMysESCTP0upn/MXo1uMNFpcngznfv0kDKQgz+Bj6j
         4H07IGzUk4nwyokSzH7ktkM78cqngPysAmUufZrm0YKPD7hmMogcal2K7GsG06ScqBG2
         HZww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=T3/AwPj7ubT0rvrwbPTFOAkudLEBnPadUnTh1gYczvE=;
        b=giR1V/5XK3OgoYtA3tZCdgR9DsRloIXAp+j+v6JVE7A7f5M3gCV/d1nqOlUEqRTIeS
         kRnVzkBryKdcX+sj22L1nXPGzkekacR9iLYDRQN+bESTSKYbkdUF64oZ3kEOB+FF/ik1
         f3xU0SD+2eXIsOc2taYJfyvrvSB6NI9Uhskwq2jHG8G6pa+hXKd+i9WdhT5IY4v7Wcub
         YCX+B844kO8/reR7jxjTOtCGzi3TkFJ55RMaZo9ATYPq5QM219IvAaE8eQOe+juLhpsa
         qJWFnsVFKxKjw2N4XGaPxcyugii29ekKEVFvHMSi06m8J5/vbIPF6J9w0Yw1mcBBh8FN
         iFbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WykVFxPd;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id n5si1074667otf.3.2020.03.30.05.50.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 05:50:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WykVFxPd;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585572658;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T3/AwPj7ubT0rvrwbPTFOAkudLEBnPadUnTh1gYczvE=;
	b=WykVFxPde8AeKEa/oO9FuANdTPHVqkKn+rhtMQvzI26b1jQsMp3PmNKGn00K0ISYmsOyP7
	NsM0yVvx1aiDsSjHaMGoOnJqDtcQg6qrfRJ1bE977pjUMoBUQcxH0QfYg1Gxs3TNXkv8n+
	6krKnmbXLBrO8diXsA/74YgkCMFi1IA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-io4QgHC3MseNrptUO0uB6g-1; Mon, 30 Mar 2020 08:50:56 -0400
X-MC-Unique: io4QgHC3MseNrptUO0uB6g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98D69149F2;
	Mon, 30 Mar 2020 12:50:55 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55B5860C63;
	Mon, 30 Mar 2020 12:50:54 +0000 (UTC)
Date: Mon, 30 Mar 2020 14:50:48 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH 1/2] staging:
 wlang-ng: Properly align the lines of function call
Message-ID: <20200330145048.535b89d6@elisabeth>
In-Reply-To: <CAMS7mKA1nxc4S7_y73QTvNXohZ25rbV+NkDiP-p0onzvdnUP7w@mail.gmail.com>
References: <20200327144229.19738-1-debsoumyajit100@gmail.com>
	<20200327144229.19738-2-debsoumyajit100@gmail.com>
	<20200330111251.1d2e6db6@elisabeth>
	<CAMS7mKA7g8Ea2RpkZOZ0R5mkJM+zwawB86CtBiY=D-VZhW6q0A@mail.gmail.com>
	<CAMS7mKA1nxc4S7_y73QTvNXohZ25rbV+NkDiP-p0onzvdnUP7w@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 15:44:43 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Is there any issue with this patch?

Yes, it makes the code even less readable because it reaches 115
columns.

-- 
Stefano



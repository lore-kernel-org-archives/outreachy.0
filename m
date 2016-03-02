X-GM-THRID: 6257136391143030784
X-Received: by 10.112.209.6 with SMTP id mi6mr3123505lbc.15.1456935949121;
        Wed, 02 Mar 2016 08:25:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.199 with SMTP id e190ls218167lfb.16.gmail; Wed, 02 Mar
 2016 08:25:48 -0800 (PST)
X-Received: by 10.112.200.68 with SMTP id jq4mr3124727lbc.3.1456935948788;
        Wed, 02 Mar 2016 08:25:48 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w197si212976wmw.3.2016.03.02.08.25.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 69563DBA;
	Wed,  2 Mar 2016 16:25:47 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: mdc: Remove unused
 macro
Message-ID: <20160302162547.GK987@kroah.com>
References: <20160301172205.GA19758@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160301172205.GA19758@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 01, 2016 at 10:52:05PM +0530, Bhaktipriya Shridhar wrote:
> The macro mdc_unpack_acl(req, md) is not used anywhere. Hence, removed
> it.

It's used, in this very file, please be more careful.



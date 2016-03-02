X-GM-THRID: 6256042901730492416
X-Received: by 10.112.130.42 with SMTP id ob10mr3250139lbb.2.1456935929187;
        Wed, 02 Mar 2016 08:25:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.158.12 with SMTP id h12ls784328lfe.0.gmail; Wed, 02 Mar
 2016 08:25:28 -0800 (PST)
X-Received: by 10.112.158.138 with SMTP id wu10mr3235297lbb.11.1456935928698;
        Wed, 02 Mar 2016 08:25:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z75si45311wmz.2.2016.03.02.08.25.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 59785DBA;
	Wed,  2 Mar 2016 16:25:27 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:27 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Use
 list_for_each_entry_safe
Message-ID: <20160302162527.GB987@kroah.com>
References: <20160228133103.GA18517@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160228133103.GA18517@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 07:01:03PM +0530, Bhaktipriya Shridhar wrote:
> Doubly linked lists which are  iterated  using list_empty
> and list_entry macros have been replaced with list_for_each_entry_safe
> macro.
> This makes the iteration simpler and more readable.
> 
> This patch replaces the while loop containing list_empty and list_entry
> with list_for_each_entry_safe.
> 
> This was done with Coccinelle.

You sent 4 patches all with the same subject again :(




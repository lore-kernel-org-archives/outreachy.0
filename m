X-GM-THRID: 6211892414504763392
X-Received: by 10.182.24.42 with SMTP id r10mr26863306obf.42.1446616573970;
        Tue, 03 Nov 2015 21:56:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.37 with SMTP id d34ls549010qgf.53.gmail; Tue, 03 Nov
 2015 21:56:13 -0800 (PST)
X-Received: by 10.13.234.137 with SMTP id t131mr23933807ywe.53.1446616573543;
        Tue, 03 Nov 2015 21:56:13 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iz5si2679669pbc.2.2015.11.03.21.56.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 21:56:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (64-21-211-131.static-ip.telepacific.net [64.21.211.131])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2A5E48DC;
	Wed,  4 Nov 2015 05:56:13 +0000 (UTC)
Date: Tue, 3 Nov 2015 19:43:49 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: lustre: lnet: Remove
 typedef cfs_workitem_t
Message-ID: <20151104034349.GA5244@kroah.com>
References: <1446360698-9942-1-git-send-email-shraddha.6596@gmail.com>
 <1446360698-9942-3-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446360698-9942-3-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 12:21:38PM +0530, Shraddha Barke wrote:
> The Linux kernel coding style guidelines suggest not using typedefs
> for structure types. This patch gets rid of the typedef for
> cfs_workitem_t.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v2-
>  Fix alignment.

Due to other changes from other developers, this patch doesn't apply
anymore :(


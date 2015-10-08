X-GM-THRID: 6201947249365221376
X-Received: by 10.182.215.226 with SMTP id ol2mr5188176obc.11.1444296833685;
        Thu, 08 Oct 2015 02:33:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.148 with SMTP id x20ls754662qgx.34.gmail; Thu, 08 Oct
 2015 02:33:53 -0700 (PDT)
X-Received: by 10.129.116.133 with SMTP id p127mr4857883ywc.50.1444296833379;
        Thu, 08 Oct 2015 02:33:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y11si717092ywd.7.2015.10.08.02.33.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 02:33:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.88.227.134])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 098481EAA;
	Thu,  8 Oct 2015 09:33:50 +0000 (UTC)
Date: Thu, 8 Oct 2015 10:19:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/4] Staging: lustre: obdclass:
 lprocfs_status: Declare typedefs as static
Message-ID: <20151008091917.GA10872@kroah.com>
References: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
 <1444003359-6619-3-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444003359-6619-3-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 05, 2015 at 05:32:37AM +0530, Shraddha Barke wrote:
> Declare typedefs  lustre_attr_show and lustre_attr_store as static
> since they are used only in this particular file. Also remove them from
> corresponding header files.

"typedefs"?  I see no typedef changes here :(



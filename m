X-GM-THRID: 6255472984804294656
X-Received: by 10.182.20.195 with SMTP id p3mr39752087obe.47.1456468345208;
        Thu, 25 Feb 2016 22:32:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.47 with SMTP id 44ls813482qgk.90.gmail; Thu, 25 Feb
 2016 22:32:24 -0800 (PST)
X-Received: by 10.31.169.130 with SMTP id s124mr44355623vke.1.1456468344249;
        Thu, 25 Feb 2016 22:32:24 -0800 (PST)
Return-Path: <bounce-md_30481620.56cff177.v1-d43a70c265944d61b9572220c34b90b4@mandrillapp.com>
Received: from mail12.wdc04.mandrillapp.com (mail12.wdc04.mandrillapp.com. [205.201.139.12])
        by gmr-mx.google.com with ESMTPS id y131si756296ywc.0.2016.02.25.22.32.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:32:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cff177.v1-d43a70c265944d61b9572220c34b90b4@mandrillapp.com designates 205.201.139.12 as permitted sender) client-ip=205.201.139.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cff177.v1-d43a70c265944d61b9572220c34b90b4@mandrillapp.com designates 205.201.139.12 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cff177.v1-d43a70c265944d61b9572220c34b90b4@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=thomQOMw4LXKDQobEfVhGhBuCVw=;
 b=BfJlrZIbC+16AscmTkqbzoTsUUUiVns4NdPPjWVL3+SBu6AZNEn8/2enZ6YTW0YmewVT0+2Qs9g8
   0m1jZKKKrXDQ6D6k8zyBJjV+W3njPFxSoVlQnzOIYMhl2fJmfXwSU8jHHEGreIf+grWEAbPKfX4s
   2fKkmQrqm8pOOxreBb0=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=RPAbyNTGv1J42QBcsu1XxxHpd834eYg/QmBLeoUUoGwpsq/aXgUJxAKbpa5dOZ7Y9+xg5b7hF5/S
   5oHreofzcEDYIAAkG+3vIOnRSQjlgmA9qk+Q4phw4FtL6u6SDaWyjAezCooMRAbg/nmf8RH5RtEu
   6ajSBfybI6yqbxufVo8=;
Received: from pmta05.wdc01.mailchimp.com (127.0.0.1) by mail12.wdc04.mandrillapp.com id hpvong1jvjg6 for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:32:23 +0000 (envelope-from <bounce-md_30481620.56cff177.v1-d43a70c265944d61b9572220c34b90b4@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456468343; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=MGsotHl8mAWuE2XsUvaZFkFXLYyhBLX2u+Tyxd2VL2E=; 
 b=nN3K1Lz8Wqv0KSw8EaX73eU7aITk8Qy0iXrLO2QVEb7k9Nj/ioqnrlvyYGiHwo5CkNNjNY
 XqkDs/efVHQfsirxnB88LSVVbieZdMYzfmvv89tXxRcgLpnPOq/NMNlgK7/+7XtLZUZdOT5P
 DjM2BhLB9OzLGlIiE+LdSSeCqvlqA=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: wilc1000: remove code for HOST_IF_MSG_SET_MAC_ADDRESS
Return-Path: <bounce-md_30481620.56cff177.v1-d43a70c265944d61b9572220c34b90b4@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id d43a70c265944d61b9572220c34b90b4; Fri, 26 Feb 2016 06:32:23 +0000
To: Alison Schofield <amsfield22@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226063223.GA2127@kroah.com>
References: <cover.1456464955.git.amsfield22@gmail.com> <ca453054ce041b9f1827f7d2e210780be7fd98b1.1456464955.git.amsfield22@gmail.com>
In-Reply-To: <ca453054ce041b9f1827f7d2e210780be7fd98b1.1456464955.git.amsfield22@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.d43a70c265944d61b9572220c34b90b4
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:32:23 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Thu, Feb 25, 2016 at 09:54:19PM -0800, Alison Schofield wrote:
> The function that sent this message id was previously removed.
> Finish the cleanup by removing the call to the message handler,
> the message handler, and the #define.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 29 -----------------------------
>  1 file changed, 29 deletions(-)

Due to other changes in this file, this patch didn't apply, but I
applied your first patch in this series.  Can you rebase the rest of
these patches against my staging-testing branch and resend them?

thanks,

greg k-h


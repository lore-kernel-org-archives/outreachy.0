X-GM-THRID: 6394872359829897216
X-Received: by 10.46.9.141 with SMTP id 135mr558644ljj.19.1488922784151;
        Tue, 07 Mar 2017 13:39:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.92 with SMTP id 28ls185883ljw.54.gmail; Tue, 07 Mar 2017
 13:39:43 -0800 (PST)
X-Received: by 10.25.199.212 with SMTP id x203mr457712lff.9.1488922783646;
        Tue, 07 Mar 2017 13:39:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n128si479376wmf.2.2017.03.07.13.39.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 13:39:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,260,1486422000"; 
   d="scan'208";a="263584880"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 22:39:36 +0100
Date: Tue, 7 Mar 2017 22:39:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] media:atomisp:pci: Use error codes
 instead of bool variables
In-Reply-To: <20170307213044.GA11835@fireworks>
Message-ID: <alpine.DEB.2.20.1703072237220.2292@hadrien>
References: <20170307213044.GA11835@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> -	return true;
> +	return INPUT_SYSTEM_ERR_NO_ERROR;
> +
> +exit:
> +	return INPUT_SYSTEM_ERR_CREATE_CHANNEL_FAIL;

Oh...  I was hoping for standard kernel values like -ENOMEM, -EINVAL, etc.

Also, watch your subject lines.  Normally there is a space after each :.
In any case, you should pick what has been commonly used for this driver.

julia


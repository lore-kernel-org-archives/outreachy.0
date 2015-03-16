X-GM-THRID: 8221215424512
X-Received: by 10.194.161.194 with SMTP id xu2mr9015175wjb.1.1426497612335;
        Mon, 16 Mar 2015 02:20:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls653989lah.23.gmail; Mon, 16 Mar
 2015 02:20:11 -0700 (PDT)
X-Received: by 10.152.8.73 with SMTP id p9mr4635365laa.6.1426497611713;
        Mon, 16 Mar 2015 02:20:11 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id o3si637159wib.2.2015.03.16.02.20.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 02:20:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22b.google.com with SMTP id cq43so33224903web.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 02:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qFufm5E5HHJBz2Qatr4ga4GbV5PcyLrKVr9PQXCoa2g=;
        b=oSx9JTCPz5Cah/9sAP69X6HenCL41+xbn/sDtwVMQM8/3gZIb0/xlFtG+Gl+VWNF0a
         TN1FFJRpeIOxkcYgtCtPVkCvu7ZqRLQeH5J2Q3NNRkMdXcHvhTQYbCwlty6q0AQxVA3l
         CtQgnHCPTKy506z9zwkBxM80I+b4mbY73WE/E19N3FlvTOQSbawLQTPBp6QNYRYI3oMa
         HcYWkeGy41WRVMp+MILnQKwLyjoikN456pJLTIZM/OOq7gp3MeLoD6V6ZkfwgG46vzzF
         P7Jer0DvtAPR4pl54f3eN6Buytl0pO+4as+gwswJlobGnARL2BTkyuxNWYo+EZLxKu8J
         yYHg==
MIME-Version: 1.0
X-Received: by 10.180.83.129 with SMTP id q1mr88208231wiy.46.1426497611614;
 Mon, 16 Mar 2015 02:20:11 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Mon, 16 Mar 2015 02:20:11 -0700 (PDT)
In-Reply-To: <a13830f386c8310e44a106ab20ae9a2fac042078.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
	<a13830f386c8310e44a106ab20ae9a2fac042078.1426353884.git.cristina.opriceana@gmail.com>
Date: Mon, 16 Mar 2015 11:20:11 +0200
Message-ID: <CAEnQRZDWU7crLQybAW-415mMzHgoiWjVMaTPSrwGhDD9Ea03uA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/6] Staging: iio: Prefer using the
 BIT macro
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 8:51 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patch replaces bit shifting on 1 with the BIT(x) macro
> as it's extensively used by other function in this driver.
>
> This was done with coccinelle:
> @@ int g; @@
>
> -(1 << g)
> +BIT(g)
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>


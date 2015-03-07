X-GM-THRID: 6950918029312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4f1aeb5db514fe54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.142.1 with SMTP id rs1mr1169025lbb.19.1425762543028;
        Sat, 07 Mar 2015 13:09:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.130 with SMTP id v2ls153226lae.98.gmail; Sat, 07 Mar
 2015 13:09:01 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr3141704lbb.11.1425762541268;
        Sat, 07 Mar 2015 13:09:01 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id l8si484175wia.0.2015.03.07.13.09.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:09:01 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by wiwl15 with SMTP id l15so10564337wiw.1
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 13:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=whBXmov5h6cFF0Xk9cj7nl1vCf9nfGBuWGwoFrykuIw=;
        b=Asve0PhxJHfShQY61e5HO0txLP2LPLjh+nCdk6+RVR0s3CSUNtwuHjJzr2TiDpMELZ
         oTN1jGamYY5iXZIx8FbV9zek7rz0J4HVjbk/T4RfWcgbruPfl8POWK9wugrUTtdo4kqE
         25ACetsJrq3fQGtVMzjVQPK+qKqR5iEKsQZoXM9G2vZbr7bdlj2JpJd/0ekG2gaMctK8
         2c1dhQMCPddjwXZ7iAqaSB9yJxyxYLr535Vnyp0eD2/lX+uWH3axxiul9Z61ABqoB6FK
         NeVJFqmsLseMLtiP68mQX/baZR5t+V+H1ZAZ3GnHNV9SRfyz8vAnDCxpzuAVBoZXt/8h
         T0PA==
MIME-Version: 1.0
X-Received: by 10.180.87.106 with SMTP id w10mr87717450wiz.62.1425762541165;
 Sat, 07 Mar 2015 13:09:01 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.28.3.68 with HTTP; Sat, 7 Mar 2015 13:09:01 -0800 (PST)
In-Reply-To: <1425762154-1898-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
	<1425762154-1898-1-git-send-email-hamohammed.sa@gmail.com>
Date: Sat, 7 Mar 2015 23:09:01 +0200
X-Google-Sender-Auth: wAxO7wCkhqwUiveUn5HY5BEIx4Q
Message-ID: <CAEnQRZCY6JmYWj-5qHk=-GCLiRCxSUKBXKxsnzyRbXNp7T4t6w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: dgap: Remove unused variable
From: Daniel Baluta <daniel.baluta@intel.com>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 7, 2015 at 11:02 PM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> This patch removes variable that was used to store only the return value of a function call.
>
> The issue was detected and resolved using the following coccinelle script:
>
> @@
> expression ret;
> identifier f;
> @@
>
> -ret =
> +return
>         f(...);
> -return ret;
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>


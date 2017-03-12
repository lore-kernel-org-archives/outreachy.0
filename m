X-GM-THRID: 6396655727339896832
X-Received: by 10.129.119.84 with SMTP id s81mr14111123ywc.6.1489339207159;
        Sun, 12 Mar 2017 10:20:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls1003706otr.34.gmail; Sun, 12 Mar
 2017 10:20:06 -0700 (PDT)
X-Received: by 10.13.234.5 with SMTP id t5mr14239602ywe.166.1489339206772;
        Sun, 12 Mar 2017 10:20:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id a3si2751545pfb.2.2017.03.12.10.20.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:20:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id o126so60360485pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 10:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3cD31Xa5xcwvuF/iAnXcrmmkqapaSfhxaPz+1RQOsP8=;
        b=rf/n+plu2byxc9NwqkDsKrV49iCXsduosTUvB9wbh57Fq0m6x+9YgnxdTn5NsSzFNZ
         144L4IoxJ8A/8SJAbqs+kAqWzjakfwNyhEPT5Zlw+4m3UEREYobmmizyACLZspX5ym5F
         3FzLSrvYaMdDs6F1xs2EEEegwtY6a7V//cOe+IDt6Y29WL5fdaG5cZec7vhpC4cCYKOp
         SoWLqN4V/4g3ExPCdgsGhb8bCgQqR1o6Wku5rMjVUwt0c+Lx5pF+MDlY7FR8JPiltMr1
         0I69D5UU2R4zaA0opAxar5tw9RWSHbkg5Wqk9f1oSkDN3KTqGZ2O6MZYtVyz2HWrL6wm
         lnng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3cD31Xa5xcwvuF/iAnXcrmmkqapaSfhxaPz+1RQOsP8=;
        b=fGrSjOHGfBXssx0joN0/XaRMWAHWN9eTvQfWtPgKWj+KhhnrsrEu1Vlhsy7m/shjiL
         b1TWSG315StB/A8EmmOFq+a2VKrwl37E6sQcsFkxyhbW8cXke5Uzp5AhOqNE0nmIrgqJ
         CuRWBDlnGzWT8J16ecdcFXsUEG87p2AFpNQvfioMIvcOGDw4Rmj9aEZZ20HqBf/11G2G
         ILB2U3/8r7uk8wL1AQ7fWPjwAUR+p1Yy8K1RL2FjlCsAX2Sev4aiwZr/ayuV7O39C9hc
         2MoS3fXvB4BZF5o2xs8xfAuTpD7pFtVOsbCrIWD+H+gq3Z8oIoSfHlLl+7f4fHXEhvnK
         ddYA==
X-Gm-Message-State: AMke39k8b0XJLKiWl+ZrCFexq37gI+vgWeC0bHA0wMxpuIGrgyJSXQdvsUkWaeYvlK6Jxg==
X-Received: by 10.99.102.134 with SMTP id a128mr31437356pgc.215.1489339204725;
        Sun, 12 Mar 2017 10:20:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id t189sm29184499pfb.81.2017.03.12.10.20.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 10:20:04 -0700 (PDT)
Date: Sun, 12 Mar 2017 10:19:56 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] Gargi Sharma
Message-ID: <20170312171954.GA3711@d830.WORKGROUP>
References: <CAOCi2DHxiahL=K9y6PzytK9wok7nDbOCW6ir4hy9g3ii9oyWxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCi2DHxiahL=K9y6PzytK9wok7nDbOCW6ir4hy9g3ii9oyWxg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 10:20:39PM +0530, Gargi Sharma wrote:
> Hi,
> 
> Please grant edit priveleges.
> 
> Thanks!
> Gargi

Is that "Gargi Sharma" or "GargiSharma" ?

> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DHxiahL%3DK9y6PzytK9wok7nDbOCW6ir4hy9g3ii9oyWxg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.


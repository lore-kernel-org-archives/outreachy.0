X-GM-THRID: 6803273594668318720
X-Received: by 2002:a2e:7806:: with SMTP id t6mr916644ljc.292.1584010570466;
        Thu, 12 Mar 2020 03:56:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8718:: with SMTP id m24ls1007454lji.3.gmail; Thu, 12 Mar
 2020 03:56:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvFI+hIU56fEmD/IzJ/ZVPad++/NkQl8BErmfU8GNgPx6pMk2dd5TodXYR5iV06ZoUl8Tam
X-Received: by 2002:a2e:9252:: with SMTP id v18mr4922000ljg.114.1584010569041;
        Thu, 12 Mar 2020 03:56:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584010569; cv=none;
        d=google.com; s=arc-20160816;
        b=YLgnUCgxEXEU3UcOb68WT7sD3uwUCHGRbj51fjKzbMhx9UtdFlwJ6DSu7bpsqaYcsr
         wRt533pwCVSU034Ftbf/LvHfE98keh5t8K8rbtlzKNM2/33dAebqiIM7qREmpodJd+Fo
         tcV7JfyVXk6YmblYI+Y85BqrkEFFh1mjZfd8dpNUjhr9LdDJAvL/McuxwOhmWAbs7rHV
         1Kr9thJ9ndJUshm04whuenFlJLJsUxVECTMWgfsUvUmF7+3O9P4Iehr4Jpw+3xhbXC7O
         /WljP5DJaUYgswXwksZ295CvuGWztPb7XdrK5WGQISZ+/trsnzzYElCntiAgve0tY/xo
         JFgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date;
        bh=oCPvpU2S+t2ZQ8z06dLhNWTewoQWlvpBWuCwVxD/t9Y=;
        b=zkN8LAPl0ODovnUlzYCUP+EwfjHc0HeDlQ4oRCRjUSFDGlKMPSRQpm3C+Lo4zliqRf
         YBNFXzksKnct0FckNaM9Gat8PmFGfoOwiQ3lvBIN/CpNDLt7Lyk4+kQIIW/96mWXb9NA
         xv3I0bYsx1OqMKA30rCQNhCXvNK3R7QwTOxHxyH1FNC4S7liWD0sUo3hgrB0eUMeo1xQ
         9c4nQQgddk1zEVYVsYdspPnlJAjc5kOOXM+DKshmj+B1rh1KynEA62Pf2t/F1Xk2uFF5
         K5BOsl3wVutj9W10F1ad4MTdbHB0tApM5HLVvkoBtALikfi1t0omzwtxEPFvMnf/3S4g
         SKpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id r20si208871ljp.5.2020.03.12.03.56.08
        for <outreachy-kernel@googlegroups.com>;
        Thu, 12 Mar 2020 03:56:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 12502 invoked from network); 12 Mar 2020 10:56:07 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.246.223.143)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 12 Mar 2020 10:56:07 -0000
Date: Thu, 12 Mar 2020 16:26:02 +0530
From: R Veera Kumar <vkor@vkten.in>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Patchset Help: Can we make one with corrections in multiple files in
 a driver
Message-ID: <20200312105557.GA5010@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)


I want to know what can be made a patchset?

If I make simple corrections in a group of files in a driver
using checkpatch.pl, can it be made a patchset?

Also I sent a patch with typo fixes in two files.
Could it had been made as a patchset?

Regards,
Veera


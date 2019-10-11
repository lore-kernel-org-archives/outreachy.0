X-GM-THRID: 6746399399110246400
X-Received: by 2002:a17:90a:b38c:: with SMTP id e12mr15560463pjr.114.1570768514960;
        Thu, 10 Oct 2019 21:35:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:454d:: with SMTP id x13ls1777370pgr.12.gmail; Thu, 10
 Oct 2019 21:35:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZhO9gpkFqaeWH3T7ha8MsYFJSSO1tD91oGA9p+uzQl70Vrq5H8BkPD7hoODUWDQGVFbIg
X-Received: by 2002:a65:418b:: with SMTP id a11mr15249818pgq.23.1570768514045;
        Thu, 10 Oct 2019 21:35:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570768514; cv=none;
        d=google.com; s=arc-20160816;
        b=ukMDg12u37+8Yi5OxkkVAfdHQ2hOZOEzAtizJtJLawxK2PAAoQ04otR3zDqfJHIsuM
         ONas7OK7kjP2LWj1836kURU4xsd7Lr4VTSzfkKWRQGvY2FSvnZ1NVu3XEZi6fZJJTtJj
         4iIpo1pJ460nXWmmCGihNNQyjsX1ow16qMSosY0+kN94DMna3AeE7HGWSldtBbbIKdR3
         zgWEbH4dt+HwsQp3R7KBC9OL8fBg5ETMotYEsgAHUNVFQNmIMZqrhJOlWVc+VVZsASxM
         xuFvH04yX48Djyjw7/Q8q5Z68wGCGgqKOW/kDroKbQWsafNjSsbyia6ejQG9fhT0jIje
         PxTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=djnlOgwD66OiCAw0jr3vXGDL9NGccYuIVGy6hANnAs8=;
        b=bvrux3QrdFZPeOkWfHBTP/W2YEPCTOaZPQUq1C3XejmSN5RkpyUVnF2S43604OSyrv
         3ykpPwakaZTnuS9nwFm/RewDULmyMVG5InAoecf/hhpo81acQlq41iGbyIppdkzmCc7h
         romKEQN/bUzFI6+z8f1/OlPuJL+LLhA5gyV92cL0/Yvwg/v58seETlpEno2yklfLYGOZ
         ogCNlJUNwCFVOmP4svLdZcRLkY2/qdQdK2QZZuuVMlRPDstFJ4asOz0gBa7PJGQ5Dx45
         SXNe2decMLZomaB7NmP5WmmSSmsDKY4gaO57ZVxdGS0KAVpTEVcBmi2ow4xCifP9aDGw
         YZ9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+lpMIsP;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id o23si706788pjt.2.2019.10.10.21.35.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 21:35:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+lpMIsP;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa41.google.com with SMTP id d126so1861364vkb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 21:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=djnlOgwD66OiCAw0jr3vXGDL9NGccYuIVGy6hANnAs8=;
        b=j+lpMIsP9SWCwx7zfWhI+s99iLj0SBHvpacw71Q1Ebo0S/6+C6rhcsOpj483alHNiq
         wFHymMs/rAl2s+98Skf5CM6p1oe0+WU0mYmkTZ07145Zmdm6da/87yOpFlVx9QTEPr6f
         YbQ4sTwbh/PBx+B6beRFhqnpF7WwgPkTwA0WbG4ZDbXNw8heSJ30DAwQ8MH8KYkM3lRX
         aVqUD6RBqPo1iw4cuZ7X0Q9zNa44ZzLpCJtyteVg2REHYpJlV49vb8lTKR1X9G+TY4Xi
         wx8vH8z0V3y/+B40o6C7ATbd60Q1oRqhSAkKNytlfJIDtowxGSA13ivkmYp5mhFVeq9V
         wD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=djnlOgwD66OiCAw0jr3vXGDL9NGccYuIVGy6hANnAs8=;
        b=OYZHijaWx5YZ5fEDAejpsGKHk+jJjEAwSdcPyimwJu2kOrXrfGyVuinIic4fzd7VWL
         zFDIWLfcsXrXKbKnTOD0QsPABG1mIPSIqwhXRjIrHff1jreKsape5Cv/6qHh1wkZl5KL
         gpBpm4GIOi1+50tKhh8E1GFeN8+TLrhy1KxWNsxnyYeUCvF/ygWpQMlhXr1O1rhirruz
         JJMCME47oRgO7s2avlqJ6UKG+hwazczQjociLKalGXkuN83IshnWX0xU/e38iOrYzGvj
         UopMiBHsfEz8IcxIeQ2fET+ckkIzvW7ICvP/Iyy9BtOJpkJQrUxkXGbSqVR0ZJ8ayhbn
         mRCQ==
X-Gm-Message-State: APjAAAW65znO4CUUkHpkvi5YO6ZxTPCk9HlbxbVs+EObrdjkE1raYDRk
	NSGfb3hR4BZNF1TQM6aMYrDiCFMfriB5Fg==
X-Received: by 2002:a1f:c846:: with SMTP id y67mr7344949vkf.70.1570768513102;
        Thu, 10 Oct 2019 21:35:13 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id v188sm2256474vka.34.2019.10.10.21.35.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 21:35:12 -0700 (PDT)
Date: Thu, 10 Oct 2019 23:35:10 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: rtl8723bs: Clean-up in rtw_security.c
Message-ID: <cover.1570768179.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

This patchset would improve the formatting, style and remove
unnecessary code.

Javier F. Arias (6):
  staging: rtl8723bs: Replace string with identifier
  staging: rtl8723bs: Fix lines over 80 characters
  staging: rtl8723bs: Add spaces between operators
  staging: rtl8723bs: Remove commented code
  staging: rtl8723bs: Fix indentation warnings
  staging: rtl8723bs: Fix function call format

 drivers/staging/rtl8723bs/core/rtw_security.c | 121 ++++++++----------
 1 file changed, 52 insertions(+), 69 deletions(-)

-- 
2.20.1



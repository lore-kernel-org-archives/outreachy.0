X-GM-THRID: 6674267883353145344
X-Received: by 2002:aca:4d87:: with SMTP id a129mr6204585oib.48.1554055111796;
        Sun, 31 Mar 2019 10:58:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5f1a:: with SMTP id f26ls1985203oti.2.gmail; Sun, 31 Mar
 2019 10:58:30 -0700 (PDT)
X-Received: by 2002:a9d:7850:: with SMTP id c16mr5853729otm.9.1554055110923;
        Sun, 31 Mar 2019 10:58:30 -0700 (PDT)
Received: by 2002:aca:750d:0:0:0:0:0 with SMTP id q13msoic;
        Sun, 31 Mar 2019 10:20:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqylBY3cs/zxMXLLVgtSCMbWoHbCv8GurvVzCoFbrlZ1Y1RqKUaUBpKiMjnsapIg2wDvLD6g
X-Received: by 2002:a63:594e:: with SMTP id j14mr16078pgm.62.1554052816597;
        Sun, 31 Mar 2019 10:20:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554052816; cv=none;
        d=google.com; s=arc-20160816;
        b=ltg93cGQxWr+eKDBfdYrz5d5vgHZC/7CyRlpIvge5IN89gTMoBlByqagSb1hWPQWMi
         iSPvvF8qT2Y9Pjh5EJTLRr6t1SlS0I+Eywsc7fAYm9sz354dj4knS93zjnmjzJfDxER1
         h0OKJ5t/g+JeqS52s9n56VcETk3Xo1w4jgG0HoCFRBvjZ8EPCBNnHq1VnVcGal0u+6t8
         hbzHoLJpvVVZpTOsoMRMMMPTkS3J3XIzwFwa18SOk3tgmKBCTyTIFxstkPUANqxu7ioy
         CVO7+48TSvaN0r5SIosvl5oAK5JXC95xP15rBg/82raUQWLYV/Ckgol9ZHciRGJEFD8W
         kteA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=KC4jtpINQ9xvcBYdRf0Skx6hYDr5mQBRcFGsLa3lZGI=;
        b=1EZv7a9JG7ygkaTF1HbMWdHTN4zZ7mWD+Pe2vclAHrdClwciH0S1Rs+Dr+j7FQTN6S
         5Gpa+QX2aA5d1G0oE0Eid5gkY88h0wSmDAw0OoTF2ngOOqb7inHSgf+LxTThL/OiaK4V
         3xVekw8/PnK4OoHQ3ZLrv2O6OADt/DfWHCpuuURBChHoT2wD54WwvlfHdOAjmhyIcViw
         +FOC8eapMWTrTtRKrMZ3rD9tIY5rckglHYKTA0Y9MPxgiDeaBuVGm81iHTaXGbTCMWSx
         RXS4gvNA3x1ADTA3USNXrN623a9tiLp3MCy8TyBgXIg1UmL/S+MDXzq2ZYMmiYAQ/lyQ
         gq+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gT6Ix7Bc;
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Return-Path: <larry.finger@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 141si518846pgb.1.2019.03.31.10.20.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 10:20:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gT6Ix7Bc;
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Received: by mail-oi1-x244.google.com with SMTP id j132so5417805oib.2
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 10:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KC4jtpINQ9xvcBYdRf0Skx6hYDr5mQBRcFGsLa3lZGI=;
        b=gT6Ix7BchwDdzv8SJgzLu5iz+drUTuzC7KzhyddWJ6omA6JblFkOHO2nqRNJkHahJW
         HVkle9V6oPmEwTyEXivUZr2L9BubmpzZrX0fTG1EF1BwHUGL++JNVVskZ6QyB9XDaYks
         EyE5EbacZIGV7k+UfYLo0EGYlJyciT1mgFfzG08YLpQyhyLrnhrNg3P2LWJMtZlslgy6
         9Ev1s+57plRZmZPI3uRaf5wb6FDQkOvByuK8uGZvgouFQ9f24hVHZjuW3e9ZyaWn3ubb
         3WpHYW8Mz24+4kdfTT52Lvd8nRy5x85VbguGB1vwx7lc4aNdwylzI2y5fHI0JzZmnQ3/
         ZmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KC4jtpINQ9xvcBYdRf0Skx6hYDr5mQBRcFGsLa3lZGI=;
        b=Fpi9FTgc4nyAnUcLcl77ZgrhS4m2OtYtiX7kUFUxJDaH41RzXzid+6rSdqyP4WTUtj
         Ht860x4K9Ej3Ie796N8tYj0FXj/ab0udpzwimkd64zvf6E29TUZCzRq2wLEQ2vtpkO/g
         uYkOqgD1L/MbKNS9iV4b6IfDIJE7iK2SSbejvZMVoKW6ESY5jJEHS/L/eHzDOoZasV2G
         POfCmL4BxJR8SG6IdWb9Yb6/YhcuwiQFJUPQcc9FH8sLv3p++TEpD5WI3fSTFNI+AgAW
         weJgg+sxSd6ANZHPQq45qqwZUx1MLTTi4U6DimWIz/OJRHLZe3ICVuKQKmpwYYb7pJ6q
         H8Mw==
X-Gm-Message-State: APjAAAVgZ1ihI7td135R79UPmzIQ70bjXpWjcetlrsvBCsVjpSK87zCT
	tMW/DQ6Laa72sjifa/MScdwLbfS0
X-Received: by 2002:aca:f515:: with SMTP id t21mr4276399oih.175.1554052815785;
        Sun, 31 Mar 2019 10:20:15 -0700 (PDT)
Return-Path: <larry.finger@gmail.com>
Received: from [192.168.1.133] (cpe-24-31-245-230.kc.res.rr.com. [24.31.245.230])
        by smtp.gmail.com with ESMTPSA id h68sm3374443otb.1.2019.03.31.10.20.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 10:20:15 -0700 (PDT)
Sender: Larry Finger <larry.finger@gmail.com>
Subject: Re: [PATCH v3 7/7] staging: rtl8712: use list_entry in function
 r8712_select_and_join_from_scan
To: Himadri Pandya <himadri18.07@gmail.com>,
 florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com>
 <20190331022155.68569-8-himadri18.07@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <96e52ac0-0e8a-dcc7-cb5d-2c00037cfc8d@lwfinger.net>
Date: Sun, 31 Mar 2019 12:20:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190331022155.68569-8-himadri18.07@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/30/19 9:21 PM, Himadri Pandya wrote:
> Use list_entry instead of container_of for conversion to
> wlan_network in function r8712_select_and_join_from_scan() because it
> is a better practice to use list_entry for such list manipulations in
> kerel.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V3:
> 	- Improve log message

I have tested these patches, and they do not break the driver.

Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

If "container_of()" resolves to "list_entry()" in this case, why is it "better 
practice" to use the latter. It probably is more clear what is happening, but 
you need to give your reason.

You also have a typo for kernel in every patch.

Larry


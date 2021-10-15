X-GM-THRID: 7018941118564794368
X-Received: by 2002:a19:c34d:: with SMTP id t74mr11759542lff.452.1634309270178;
        Fri, 15 Oct 2021 07:47:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:1a4:: with SMTP id c4ls35860ljn.1.gmail; Fri, 15
 Oct 2021 07:47:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJww7A5waZhom7EHXcF8RasSw+NJ6eT67K7p9f44mzpUWD7jmN8Ml2gx59rAAmAM1OV57yeO
X-Received: by 2002:a2e:2d12:: with SMTP id t18mr13500989ljt.345.1634309268606;
        Fri, 15 Oct 2021 07:47:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634309268; cv=none;
        d=google.com; s=arc-20160816;
        b=Xf9dz2fUDq7WXyGtG9v2nAOm6pjJFJhb1n6s5uwLZRL1rK2PgRnd/QaKszjz+LDBv9
         LVCzllubJweeGAEHP2uUsbui2/L5u/wP3SG2LZrjCIhC/zygUJK/Le34Ug8jbcYIZnlP
         mPR9IbPbtXrZeZT6EX5TCJQ83sQCaLTtBd0X9kCQYNoHzCNwKERBa5o1b9Ltlgto37t5
         eSGjboFqSyAcL2Yu8Gb6MDb68l+udFS/lfZ+P7ZcKEytD8ABQXT+EwRowHs47J8y/JJH
         nQd+HCx40tHWVviSGyE9JVP4R5Tb8rJQtGTGLKjSik88l7IhYmxGRyjEzTPxgdqfSgId
         JVzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=E01AI5APtyK2m0eSU6exeT54vrZKIKO/jub/6lEpXD8=;
        b=IcnyH19B3itJlDQBKZf1AlxrIvtEQEr3+2uurBX/t7/XsCl+bWP1h0GsDybuTZhMR0
         TRh7ry0PcZvlckO1vqcD/sNJGtoWd7BAFu59OAm4urJMXxe4uGYWKJHeMfl8EvNI7d9L
         gpa3T+XhcH+Yloqyg5zEb6mV0Ld+d4LgolhGqkC4xw/Yj0c9EJtUwB5xZRVPqmkKx1+B
         U/y0QOoZt2AFb7LtyxP9qm+5/pfNm7tyGo+9QEruif8m78di5oBuK0rmP286PljlX6Ig
         RcsdZjmk58zbu+ZgxmvzCE1z0oL9M8RtMyUJ4x/ZCgHrTv5W+3nTdDRXlCJAn17hoKZH
         FD0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aBpZRZy9;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id h4si318775lft.8.2021.10.15.07.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 07:47:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aBpZRZy9;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42c.google.com with SMTP id m22so27142323wrb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Oct 2021 07:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=E01AI5APtyK2m0eSU6exeT54vrZKIKO/jub/6lEpXD8=;
        b=aBpZRZy9foy4RVCxq4Uw45cxrcpMxJLwguwopABXPo4pOZ3LVAo02bMyDjwJp6J2q9
         IXQeslNGFCp8mOY3iZmlWZfId5L4Y+6ocnpunDoUYkl8vtNHjwwHz2FJnrOvbNkFTAjE
         RfyvkWDBA4WUAJgxRdSSRve3xSgzOVcOe4aLWMkIT+1mwKp4SOO9Z0wVWYoSJm/aaKfd
         dVwRupUFOUWy8d2gNLteL84XjSMp4VjaiIWI5rzi8p5PHRWQYb11WoukC1LWsfJLdShr
         LF9Bi/62Ujtuk3gz5dYX6n3tfPBhzE1i8q2QZTe4MSGKjf5esx+ImAlSyjEw1T/Jf1iR
         rTYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=E01AI5APtyK2m0eSU6exeT54vrZKIKO/jub/6lEpXD8=;
        b=psOEnQQlEj+bxqcGqkG7mYYvkW1kY0ZPUF+ay6ngZMcV8MJZDCHVOBxkRmTXON0KwT
         Ui0ZPb83CblVU3KRbFyV+wjh+MbBAIQLwS6pEy+UbPSIDOzPgCYonSDG+EuZwqiGkt8J
         udOo1LO3vTIXjSLw7c2xrdbVHH7Ymil0ChuYVh5wQYVfbG0htxKLWMNECdKl0X0P6j0G
         PrEu1t9Jdadxxk97HeC+R1OrULX1RqfyichVL7Gw6qT/OuthU+je48tv+UjNcGjc+sYp
         9FLzq0ikbpbmiy48ol5tYk2a+gZCPwLM9ygpN9Jv+tBwlRRpHHuEX7gS/O0YaC85cZCv
         EiYg==
X-Gm-Message-State: AOAM532SQb6q1rYAjFqzGBqOIlE6S91PkIo+hz2EcyuyEeHxU6wb3iki
	i8Af5fri8FMpvs8gnPoPEG8=
X-Received: by 2002:a5d:508b:: with SMTP id a11mr15364611wrt.417.1634309268218;
        Fri, 15 Oct 2021 07:47:48 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id i17sm5662312wru.18.2021.10.15.07.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 07:47:47 -0700 (PDT)
Message-ID: <85dfe2c18e7ec4bd5ae67f7a81ab6197a82e0d86.camel@gmail.com>
Subject: Re: [PATCH v2] staging: vt6655: Rename byPreambleType field
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Fri, 15 Oct 2021 15:47:46 +0100
In-Reply-To: <YWlj9x6kwYUT1jlQ@kroah.com>
References: <20211015102444.90753-1-karolinadrobnik@gmail.com>
	 <YWlj9x6kwYUT1jlQ@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi Greg,

On Fri, 2021-10-15 at 13:20 +0200, Greg KH wrote:
> Do not do multiple different things in the same commit and especially
> when you do not describe them in the changelog text.

I wasn't aware that changing this preamble-related variable would be
counted as a different thing. It makes sense, my bad.

Would you like me to amend the message to say that I also changed
`bb_get_frame_time` parameter or just drop this change completely?

Is there anything else I should address in my v3 patch?


Thanks,
Karolina



X-GM-THRID: 6466329510613614592
X-Received: by 10.36.16.81 with SMTP id 78mr3719263ity.33.1505559662793;
        Sat, 16 Sep 2017 04:01:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.147.195 with SMTP id v186ls7858237iod.2.gmail; Sat, 16 Sep
 2017 04:01:01 -0700 (PDT)
X-Received: by 10.129.0.70 with SMTP id 67mr17135730ywa.12.1505559661905;
        Sat, 16 Sep 2017 04:01:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559661; cv=none;
        d=google.com; s=arc-20160816;
        b=iUv4O/VwczfogEg/VU765sM0lnz8KtsHE8doxW/ySVDaYFWmgMhcsV0iGJbjItoT/B
         dvI7dEsJOkz6MRS8NjWHG+IFDGRhKedxYiI8mBLi4MLnG1YbCRVBQmmpLu+SuFWDdoQj
         2VJJcJiDS4kkCfGAYMH3a8rmCK8NE6ux+IpBovu9AjEQSsBJXFMWYdadUuSUA8LuR3c4
         z7I0+uxSJ0q1vA5tJj6H4nd5hcoUVyfjvER4aroQOPoEmC4eWBbE6XU5TT4wIopJgHDf
         wpjJcfSLA3aLwzO+2HfrdmC8h09Kr5Zf2pE5Rf4bR4rhxgjHbiy2+DvH2LFJThd0xkOc
         XEAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=FLNlnDpVZyjpudGJiLsouGkcVYQ1mbhz+KiELeQ4OCo=;
        b=XNgHtkjS0V7w69AGgRquWACE4pxk5uuzkxU/nrdWyALMb4boF/SJ/59Tlw/b3xk6lz
         PQE9QfoaDU1wzBUL9j32CAMzQUOamyp5QHUmtNJ5mGJwVb9HvUBJ/cY1X4cSXPvJDRi8
         olpopGw/yB5t4gaTKzRwSxrQOWujRvj0x2kb5BmZKxxpKqixL5jCIKhnpEmdqZAHOPwk
         Mx0RzVnracwdUrAS3sChlj97LG1E/wgCM6br+SUuRmDS5lfcZwtF01HCb4w7r9AVAfPW
         q/zZvRbFhgYr0DDjFPFZEdDtzSHkljHb+c0BlCYLmwllT7WCfw82VK8x48Flmevcdaph
         AzLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iAMamXo7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f189si278937pfa.1.2017.09.16.04.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iAMamXo7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so2414364pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=FLNlnDpVZyjpudGJiLsouGkcVYQ1mbhz+KiELeQ4OCo=;
        b=iAMamXo7YQZp8gmaATCjjx1r4td+WvhvLMCvchKAm5sO8U03H7uVCFD5662XxrsO8V
         CRAGSzc4u3MUiao2APditFfp+b8pOg7veAjL7yEE0GXWg9PCO89Mb48WSSOgMbqj0MHo
         2jpqEZtx3xphCL9t0aS71umty3CdOsfmSjrOhYz7GJSQJqEb+/uGe2XEGEVL7IwkN/zZ
         OEqNqIeJSekFfAuQtkCRtpoqph2h2Qrq+6x74/nIH1nw9KliFJ0vzfWK7shersgejXKH
         ndJz3ONVG9gnU8kzsR3vlzaYwsoL/NeR2LRmb9yp5Q8fL1FB5Yz/5IbcvXiOzqbAMbWw
         V4qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FLNlnDpVZyjpudGJiLsouGkcVYQ1mbhz+KiELeQ4OCo=;
        b=gQq+jsKrQXZePMVGB2Mpt/ibiFfnq/o3QYbORIDhpR6uSXx+2TKpp6nNJRkv87BKrW
         4ZTLGX4s0WCIp19kXSGOHhPTs7HoRLlQo9dig1GZeCh/NoBaxN9NEVINUM3E02BayjIW
         KrPB/9qTzamvf+zeQ0z9k6R7tuImaCsbcLoLo5U/2Q0VPs/F08fgpfOeaSF/w6uMEhDy
         pPA3DU5xKmIf26Ve0dtp/7QueWOzVCmA/+D1sEVuMsq7ebha1JuHUlJCvcZYz44fcN8J
         hSOgU9aNaUPdcCXm6/fN6XvPEA0KbGdAJddSxhNtl98m59IGr91QRToQ4J/v9GtFaNnv
         p44w==
X-Gm-Message-State: AHPjjUjM9NyaJuFtTh15ppEYLmgqYRc8fCyOdfK00glcaqXtjgg0zTvZ
	tMoWCqHZXBg8458BP4g=
X-Google-Smtp-Source: ADKCNb59RFTr/D0i93EZ9LyCdhbBOufErDX1REO36gNWYR08F2bU6JGbFXPBbs+Pm5zVDuC+jNYQBg==
X-Received: by 10.84.232.8 with SMTP id h8mr30605457plk.62.1505559661561;
        Sat, 16 Sep 2017 04:01:01 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id z187sm6498599pfb.60.2017.09.16.04.01.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:01 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 00/11] staging: rtl8192u: ieee80211: checkpatch cleanup for ieee80211
Date: Sat, 16 Sep 2017 16:30:43 +0530
Message-Id: <cover.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches add or remove spaces wherever required in ieee80211.h file to make it follow kernel coding style.

Aastha Gupta (11):
  staging: rtl8192u: fix spaces around algebric and binary operators
  staging: rtl8192u: add space after '}'
  staging: rtl8192u: remove space after '('
  staging: rtl8192u: remove space before ')'
  staging: rtl8192u: add spaces after struct/enum definitions
  staging: rtl8192u:add space before '(' and '{'
  staging: rtl8192u: fix '{' following enum go on the same line
  staging: rtl8192u: remove space function pointer arguments
  staging: rtl8192u: add space after ','
  staging: rtl8192u: remove space before semicolon
  staging: rtl819u: move '{' to next line

 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 112 ++++++++++++-------------
 1 file changed, 55 insertions(+), 57 deletions(-)

-- 
2.7.4



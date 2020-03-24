X-GM-THRID: 6807744599816142848
X-Received: by 2002:a2e:b804:: with SMTP id u4mr7445829ljo.159.1585051557533;
        Tue, 24 Mar 2020 05:05:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls3479700ljk.8.gmail; Tue, 24 Mar
 2020 05:05:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvlJFhIUfsi9ewtg15CVqhSJ/fNCUamCtE/nlulsgnLxXyr/kYUHT0LhxNafG56DfFSLih+
X-Received: by 2002:a2e:780a:: with SMTP id t10mr9001650ljc.83.1585051556016;
        Tue, 24 Mar 2020 05:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585051556; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9wF7A9/CeUf7ASWzJLeeDDJem18qlK20K4aohq7nn34DP7WBlss7pUJOCJhN7FMK5
         YSnYuSBq5WKLDyDKhg9HzEuM0419QbcB70ykgBus1d74URbMn5ZCYFw6uS5E6JtBlv88
         0LyInGClrh9/Kb7lneRs1nlIL4ucLu0uQKcbzh32IoeJy8yQ+A9wTsLLTHUvuXnurqNm
         SWu//XZw0RpvLW1DootBxx5JAgLqmql4k0jvdcP/5CmxEqqxoY3OFyQNmBRJXlBy05bu
         wuq+P2y152eq2EuYIaRZvqp7e3gGfgk8c/z3/CsbT79FBljVHZPeHvHEzvH5i0dr6S4f
         YzwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:dkim-signature;
        bh=tBrDaRVqpTdtsZXCEwzj5mC9CVjfCtLEGAmNGUPnDFI=;
        b=XhLkwVkaHKOTgyrKOzIEItsjmXjQwK9PEez7EzG7JVObxLFSl3mjH/FBm9r6b5U0U5
         RdzF0KAvjGADfpqydmpPq6mUtlD7+82tO18uaGtRVlmLhXfCIyG13PDxnpeIe/HOEB/E
         X51B0bdBwTQi8bJgKp15YIQ0txS1w2WhtKC4AxY38aA61qO0AL9SGBfjtMQtjLEh25pE
         pQZAAux1Y1w9V0djLtHyZuNlcUHG3Wm3TH7anyoUVxx68sOPERXiXJxX0z3GlrPRu77r
         gCC9ACEhl2y9JBDPGwpCaEVPK5TkhzPRyHq6SIXKAKtS5B4K7oqeQhNQdPn+gVcLLncq
         naMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ppjyDTVK;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id d12si1030690lfi.2.2020.03.24.05.05.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 05:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ppjyDTVK;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id t7so16404535wrw.12
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 05:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=tBrDaRVqpTdtsZXCEwzj5mC9CVjfCtLEGAmNGUPnDFI=;
        b=ppjyDTVKzt619otVEOkXcXX/u5HZDF1/iVMpqBHonCzlOLDB6lv4r+nHg6+fSx3dJs
         JJvjWVDETnrEmbLYoXShMB1Iz3RtGgtz8NB5SflSfDrY/FZBNaMLOQUrWkQx0sVINBPN
         aOH2MOMODuAEto2HRAz4/D4f4oAAsqvx2RLRSC18Cxl2jauctXvapgNqyor3yI9++iS7
         f9UeVRuoq3vETpuAQ3y3QZzRh5D/6EQK/L46tRMB543BqWRmj7HIMfkGKWwLzjfeDJEe
         m+LLGNZSeuP54umQ3NxcMCmJdCU52V6anMzI0kp+OfLo/BHZayTyg0ymEoPFhjyFMejr
         8NUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=tBrDaRVqpTdtsZXCEwzj5mC9CVjfCtLEGAmNGUPnDFI=;
        b=CM0DlIs0k5M5pM3QqOMimUnx4cJk0AENqT9FR3Qru33HAIqGjhEbWKwTZ1GR0KVHoM
         zJDq+1omkafL2i10cWrqcATxqUtL4LdWylXG7VrXcODCGMq9vLFzBY7oPDE7VF+deTJp
         MLG3FyxWrPrtoDch6790GJhK7HaqQ8xlTQHkKxO8Jp8uUI6VfeOhreynUg/I41yA6CWt
         XL7JqzrDKQeLhm26So4ybXuZ4NcvNi9UJy9VEbXVLE9926tJwHxAOeerIAOYdU3+ynMX
         yab4vSu55I5ZRYmI0vvMZLwqm7cCWxK78kcUKSInn0bqfefbxYTw08BmnXl2cAlEp1Bb
         Ekag==
X-Gm-Message-State: ANhLgQ0JP6NOhDLXUYD97v/oKbwSK3iFiNdHb9TytX7+G+Rg/Bb52ZC3
	u2Iofx5ajf582Cv7qwBg1UytzByLX4E=
X-Received: by 2002:a5d:50d1:: with SMTP id f17mr19628798wrt.150.1585051555663;
        Tue, 24 Mar 2020 05:05:55 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id z188sm4123761wme.46.2020.03.24.05.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 05:05:55 -0700 (PDT)
Message-ID: <eaac641de00be14d48192180c624c2e13f7d897a.camel@gmail.com>
Subject: Following up on Coccinelle.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>, Julia Lawall <julia.lawall@inria.fr>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Tue, 24 Mar 2020 08:05:53 -0400
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Following this thread:
<20200311181134.GA17847%40supernova>

While tinkering with Coccinelle, i found that this error:

coccicheck failed
make: *** [Makefile:1742: coccicheck] Error 255

only happens with (as far as i tried) two COCCIs:
using MODE=patch
scripts/coccinelle/api/atomic_as_refcounter.cocci
scripts/coccinelle/api/check_bq27xxx_data.cocci 

So running make coccicheck with no COCCI= will always fail at the 
scripts/coccinelle/api/atomic_as_refcounter.cocci

Adding that MODE=report is okay to report all ERRORs ..etc

so specifying a COCCI to get round it worked for me.

++
but i have a question, maybe a couple:

+ If i have a simple .cocci and it produces patches, how do i make a
commit of it?    _newbie_ :)

+ If this .cocci propagated across a driver, a patchset of this change
across the driver will have the same subject for all patches, I guess
thats not okay? so one patch of all the driver files should do it?

+ Basically, how to format a patch found by EITHER an existing .cocci
in the source tree, or one that is made and not included in the
/scripts/coccinelle ??
++

Thank you!

Sam




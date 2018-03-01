X-GM-THRID: 6528077387977981952
X-Received: by 10.31.194.70 with SMTP id s67mr1363113vkf.88.1519936460892;
        Thu, 01 Mar 2018 12:34:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.62.1 with SMTP id o1ls895808uai.20.gmail; Thu, 01 Mar 2018
 12:34:19 -0800 (PST)
X-Google-Smtp-Source: AG47ELtueNpjOGhHjNnC3R97t68euzgyUv9sCUCIQVwTN955Aa32KJ+IfrIySGSEJ2u28DfbiiUn
X-Received: by 10.176.112.42 with SMTP id u10mr1414442ual.69.1519936459752;
        Thu, 01 Mar 2018 12:34:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519936459; cv=none;
        d=google.com; s=arc-20160816;
        b=aVRz1KaSZMQYbuRaXcY14CPOSATktoe+4Wn5F4yGLwEhO+zFo9J3htaFu5ihn4iCLG
         DsPO9laQ0wGHnv0B6amC0wSYlmts2EwVlnLvGT4cIBK8tHsexIuJlXe10X2NiFqdhFU+
         ReWlDpy+Waxga4DspIVPgeQOXypMAqpCgpQeqdMqiqYnvVhf3Kuib7klBjb2LBwj5Fqs
         ZWVZDhAJCjLgOnSwupXR4MVNlG5gB/Z7bQv+6H9NWsrzaGnnzP5vONSFF7uXFsB9lfko
         3z/uJ44azkCGU5NCbzDlyTeLPY7T/Lrat3AOfiRdU89anA4ppwsGlFkepSlw9m5NGQY5
         fJSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=znaNL2RHnInwVG8U6fGoij4yo7Juvi7AfJKbULI4Rcw=;
        b=TFmINFAlYMZ7qigHVCwQbwt4Kn4N43oMioPvrknrPzw8SwAnm7PPiKh01tjyMJ7bXb
         Noktv6PDj8Oo0w+Bcp+TKQ1D82xBVWeAP6uBp9+A+MljsFB02vr4FTMdPJ+bzbNwoGXd
         9NaH9Nx/ukdnmoEveYUK0Z42fhu8b2ZdOMkIqbHTaDCoOcAB/gTOR3lE439Q7dg0WSjD
         P+We6ZMnEz2TlnIqxc1rXf7Elk1jbiLC1h2Wv3z9Sp7ujzZPUojaA5aMGE2mVdmiGBZJ
         slSinfRKbMqfLu6GmsYvYkoOF0A4hDDjmrZd2EEjUdKwCx9/Lh2ZKY4Eh0Bizn0zhUKw
         TIUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=KXyOleGT;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::229 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x229.google.com (mail-pl0-x229.google.com. [2607:f8b0:400e:c01::229])
        by gmr-mx.google.com with ESMTPS id b32si336374uad.4.2018.03.01.12.34.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 12:34:19 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::229 as permitted sender) client-ip=2607:f8b0:400e:c01::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=KXyOleGT;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::229 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x229.google.com with SMTP id w21-v6so4314965plp.11
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 12:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id;
        bh=znaNL2RHnInwVG8U6fGoij4yo7Juvi7AfJKbULI4Rcw=;
        b=KXyOleGTNGMl3sLVGdpHqoziuQ6/XOvCEo/RWeMR6Bi1MAu+MBtw4OYA/fpw+lEaFD
         jtj3fjsZ0zJYkRPxWoapYSKn6XfCi+JnMB7MakMKM6aYpqnafguCPzOmspL61qj5Ayqu
         /Cpqz4IhfAOd6ueM3I5QXjZh+qQ63TQszyFnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=znaNL2RHnInwVG8U6fGoij4yo7Juvi7AfJKbULI4Rcw=;
        b=sU7pKxs9S8g8GKHIQ5RztkjMwORUEHjdfyANtabI7+OFCJntEk9uoOkQf16CpSzxGm
         ZLhEcgMqFSrB3qYSV5aJOWzzu+CV5SQTw4wV6+EdmxoZWna3YTrpCGplI8kSO+VNOUMx
         uUa3DaJIhqAJm+OX6zc0/7XSj/uhbN0vOMbmI/rKFhuB0rrP22gnE8GUC0LU4g5+qoZu
         XTj66hdRDoa+uHLkRdMWIGb04Fc2Z4rnuODB6pQ0po/gJXPevOLHEsogxF9CBwMJQw0k
         2mWpe3qW4oWXFKD1mWDXSIS0ccpjJqW53naOsD09odKS7/wmwJUw/Ow3sHh/44v8qg+t
         YN3A==
X-Gm-Message-State: APf1xPC6hCTYfc2MagnM+5Wke+z1l9YRYu5aNq4LT+Ys3CwABJd6l2L2
	rQd8I1EE9WFH21czESKAtPlNYiaJ
X-Received: by 2002:a17:902:e83:: with SMTP id 3-v6mr3014148plx.158.1519936456839;
        Thu, 01 Mar 2018 12:34:16 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id j25sm8890579pgn.92.2018.03.01.12.34.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 12:34:16 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Help with Mutt
Date: Fri,  2 Mar 2018 02:04:08 +0530
Message-Id: <1519936448-27708-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

I have been having trouble loading my inbox into mutt. Consequently, I can't reply properly to emails. How can I address this?

Thank you for your time.

Regards,
Nishka Dasgupta


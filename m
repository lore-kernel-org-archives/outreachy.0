X-GM-THRID: 7020448359173324800
Date: Mon, 18 Oct 2021 11:56:30 -0700 (PDT)
From: kushal kothari <kushalkothari285@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <cc951a48-8d3f-4243-8dc6-bae3446941c1n@googlegroups.com>
In-Reply-To: <alpine.DEB.2.22.394.2110182042500.3174@hadrien>
References: <20211018164431.26462-1-kushalkothari285@gmail.com>
 <9033544.t7rfKEcqWj@localhost.localdomain>
 <0f0eb2e6b72bc5188d5eca3aa49eba1d8db0effd.camel@perches.com>
 <6124760.3TRdS1uSHU@localhost.localdomain>
 <alpine.DEB.2.22.394.2110182042500.3174@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in
 array const
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1040_962538671.1634583390827"

------=_Part_1040_962538671.1634583390827
Content-Type: multipart/alternative; 
	boundary="----=_Part_1041_198907220.1634583390827"

------=_Part_1041_198907220.1634583390827
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

>As I wrote your patch has errors, however, if it had no errors it could 
not 
>be taken in any case. I just noticed that you forgot to CC linux- 
> <https://groups.google.com/>staging@lists.linux.dev. 

>Some days ago, Greg Kroah-Hartman wrote clearly that he cannot take 
patches 
>that are not submitted to linux-staging. 

Yes, I forgot and CC'ed only to the output of the list of that script . 
I'll keep this in mind ahead. 
Thanks.

On Tuesday, October 19, 2021 at 12:13:47 AM UTC+5:30 Julia....@inria.fr 
wrote:

>
>
> On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
>
> > On Monday, October 18, 2021 8:22:23 PM CEST Joe Perches wrote:
> > > On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:
> > > > On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> > > > >
> > > > > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> > > > >
> > > > > > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > > > > > Change the parameters of functions from const char *g_fbmode[] 
> to
> > > > > > > const char * const g_fbmode[]. This additional const is needed 
> to
> > > > > > > allow us to fix checkpatch warning, as well as being good
> > > > > > > programming practice.
> > > > > > >
> > > > > > > For the checkpatch warnings, if we have a set of command line
> > > > > > > args that we want to check defined as:
> > > > > > > static const char * g_fbmode[] = {NULL, NULL};
> > > > > > >
> > > > > > > checkpatch will complain:
> > > > > > > WARNING: static const char * array should probably be static
> > > > const
> > > > > > char * const
> > > > > > >
> > > > > > > Signed-off-by: Kushal Kothari <kushalko...@gmail.com>
> > > > > > > ---
> > > > > > >
> > > > > > > [...]
> > > > > > >
> > > > > > > -static const char *g_fbmode[] = {NULL, NULL};
> > > > > > > +static const char * const g_fbmode[] = {NULL, NULL};
> > > > > >
> > > > > > You have introduced a logical change (g_fbmode[] entries cannot 
> be
> > > > assigned
> > > > > > any more) and a build error (because there is code somewhere that
> > assigns
> > > > > > values to those slots).
> > > > >
> > > > > I wonder if this warning makes much sense when the array elements 
> are
> > > > > NULL. I don't know if checkpatch could easily detect that.
> > >
> > > No, it couldn't really. It's a line by line parser and most frequently
> > > these are on separate lines.
> >
> > Sorry but I don't get it. For sure I'm missing something...
> >
> > I guess that checkpatch.pl warned Kushal because it detected that the 
> array
> > of pointers was assigned with something and so it output that "static 
> const
> > char * array should probably be static const".
> >
> > What I cannot understand is why it _can_ detect that the array is 
> assigned
> > with some values but it _cannot_ check that those values are 'NULL' and 
> so
> > avoid to warn.
>
> In this case it could, but this case is too specific to be worth making a
> special case for. The problem is that checkpatch only looks at one line
> at a time, so some values could be on another line.
>
> julia
>
> >
> > Thanks,
> >
> > Fabio
> >
> > >
> > > > However, it should be an easy fix in whatever programming language:
> > > > checkpatch should warn if and only if the array elements are assigned
> > with
> > > > non 'NULL' values, because it's pretty clear that somewhere else 
> there
> > must
> > > > be some lines that assign values to them.
> > >
> > > Don't take checkpatch warning too seriously and do compile
> > > and test any change you make _before_ you submit a patch.
> > >
> > >
> > >
> >
> >
> >
> >
> >
>

------=_Part_1041_198907220.1634583390827
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

&gt;As I wrote your patch has errors, however, if it had no errors it could not 
<br><div>&gt;be taken in any case. I just noticed that you forgot to CC linux-
<br><a href="https://groups.google.com/">&gt;</a><a href="mailto:staging@lists.linux.dev">staging@lists.linux.dev</a>. 
<br>
<br>&gt;Some days ago, Greg Kroah-Hartman wrote clearly that he cannot take patches 
<br>&gt;that are not submitted to linux-staging. <br></div><div><br></div><div>Yes, I forgot and CC'ed only to the output of the list of that script . I'll keep this in mind ahead. <br></div><div>Thanks.<br></div><br><div class="gmail_quote"><div dir="auto" class="gmail_attr">On Tuesday, October 19, 2021 at 12:13:47 AM UTC+5:30 Julia....@inria.fr wrote:<br/></div><blockquote class="gmail_quote" style="margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><br><br>On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:<br><br>&gt; On Monday, October 18, 2021 8:22:23 PM CEST Joe Perches wrote:<br>&gt; &gt; On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:<br>&gt; &gt; &gt; On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &gt; On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:<br>&gt; &gt; &gt; &gt; &gt; &gt; Change the parameters of functions from const char *g_fbmode[] to<br>&gt; &gt; &gt; &gt; &gt; &gt; const char * const g_fbmode[]. This additional const is needed to<br>&gt; &gt; &gt; &gt; &gt; &gt; allow us to fix  checkpatch warning, as well as being good<br>&gt; &gt; &gt; &gt; &gt; &gt; programming practice.<br>&gt; &gt; &gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &gt; &gt; For the checkpatch warnings, if we have a set of command line<br>&gt; &gt; &gt; &gt; &gt; &gt; args that we want to check defined as:<br>&gt; &gt; &gt; &gt; &gt; &gt; 	static const char * g_fbmode[] = {NULL, NULL};<br>&gt; &gt; &gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &gt; &gt; checkpatch will complain:<br>&gt; &gt; &gt; &gt; &gt; &gt; 	WARNING: static const char * array should probably be static<br>&gt; &gt; &gt; const<br>&gt; &gt; &gt; &gt; &gt; char * const<br>&gt; &gt; &gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &gt; &gt; Signed-off-by: Kushal Kothari &lt;<a href data-email-masked rel="nofollow">kushalko...@gmail.com</a>&gt;<br>&gt; &gt; &gt; &gt; &gt; &gt; ---<br>&gt; &gt; &gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &gt; &gt; [...]<br>&gt; &gt; &gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &gt; &gt; -static const char *g_fbmode[] = {NULL, NULL};<br>&gt; &gt; &gt; &gt; &gt; &gt; +static const char * const g_fbmode[] = {NULL, NULL};<br>&gt; &gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &gt; You have introduced a logical change (g_fbmode[] entries cannot be<br>&gt; &gt; &gt; assigned<br>&gt; &gt; &gt; &gt; &gt; any more) and a build error (because there is code somewhere that<br>&gt; assigns<br>&gt; &gt; &gt; &gt; &gt; values to those slots).<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; I wonder if this warning makes much sense when the array elements are<br>&gt; &gt; &gt; &gt; NULL.  I don&#39;t know if checkpatch could easily detect that.<br>&gt; &gt;<br>&gt; &gt; No, it couldn&#39;t really.  It&#39;s a line by line parser and most frequently<br>&gt; &gt; these are on separate lines.<br>&gt;<br>&gt; Sorry but I don&#39;t get it. For sure I&#39;m missing something...<br>&gt;<br>&gt; I guess that <a href="http://checkpatch.pl" target="_blank" rel="nofollow" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://checkpatch.pl&amp;source=gmail&amp;ust=1634669228829000&amp;usg=AFQjCNHxGQX7rGevLPJjoUttIdCpnPAFKw">checkpatch.pl</a> warned Kushal because it detected that the array<br>&gt; of pointers was assigned with something and so it output that &quot;static const<br>&gt; char * array should probably be static const&quot;.<br>&gt;<br>&gt; What I cannot understand is why it _can_ detect that the array is assigned<br>&gt; with some values but it _cannot_ check that those values are &#39;NULL&#39; and so<br>&gt; avoid to warn.<br><br>In this case it could, but this case is too specific to be worth making a<br>special case for.  The problem is that checkpatch only looks at one line<br>at a time, so some values could be on another line.<br><br>julia<br><br>&gt;<br>&gt; Thanks,<br>&gt;<br>&gt; Fabio<br>&gt;<br>&gt; &gt;<br>&gt; &gt; &gt; However, it should be an easy fix in whatever programming language:<br>&gt; &gt; &gt; checkpatch should warn if and only if the array elements are assigned<br>&gt; with<br>&gt; &gt; &gt; non &#39;NULL&#39; values, because it&#39;s pretty clear that somewhere else there<br>&gt; must<br>&gt; &gt; &gt; be some lines that assign values to them.<br>&gt; &gt;<br>&gt; &gt; Don&#39;t take checkpatch warning too seriously and do compile<br>&gt; &gt; and test any change you make _before_ you submit a patch.<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br></blockquote></div>
------=_Part_1041_198907220.1634583390827--

------=_Part_1040_962538671.1634583390827--


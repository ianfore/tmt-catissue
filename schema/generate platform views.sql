/*L
  							tmt-catissue
  							 (Nov, 2012)


  DEFINITIONS:

  	PROVIDER: the National Cancer Institute (NCI), a participating institute of the National Institutes of Health (NIH), and an agency of the United States Government.

  	SOFTWARE: the human readable source code form, the machine readable, binary, object code form, and the related documentation for the modules of the tmt-catissue software package, which provides a set of utility scripts from the data dump from caTissue test management tool (TMT).

  	RECIPIENT: the party that downloads the software.

  By downloading or otherwise receiving the SOFTWARE, RECIPIENT may use and/or redistribute the SOFTWARE, with or without modification, subject to RECIPIENTs agreement to the following terms:

  1.	THE SOFTWARE SHALL NOT BE USED IN THE TREATMENT OR DIAGNOSIS OF HUMAN SUBJECTS.  RECIPIENT is responsible for compliance with all laws and regulations applicable to the use of the SOFTWARE.
  2.	The SOFTWARE that is distributed pursuant to this Agreement has been created by United States Government employees. In accordance with Title 17 of the United States Code, section 105, the SOFTWARE is not subject to copyright protection in the United States.  Other than copyright, all rights, title and interest in the SOFTWARE shall remain with the PROVIDER.
  3.	RECIPIENT agrees to acknowledge PROVIDERs contribution of the SOFTWARE in all written publications containing any data or information regarding or resulting from use of the SOFTWARE.
  4.	THE SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT ARE DISCLAIMED. IN NO EVENT SHALL THE PROVIDER OR THE INDIVIDUAL DEVELOPERS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  5.	RECIPIENT agrees not to use any trademarks, service marks, trade names, logos or product names of NCI or NIH to endorse or promote products derived from the SOFTWARE without specific, prior and written permission.
  6.	For sake of clarity, and not by way of limitation, RECIPIENT may add its own copyright statement to its modifications or derivative works of the SOFTWARE and may provide additional or different license terms and conditions in its sublicenses of modifications or derivative works of the SOFTWARE provided that RECIPIENTs use, reproduction, and distribution of the SOFTWARE otherwise complies with the conditions stated in this Agreement. Whenever Recipient distributes or redistributes the SOFTWARE, a copy of this Agreement must be included with each copy of the SOFTWARE.
L*/

SELECT
    concat('create or replace view scenario_' , lower(type) ,
 ' as select scenario_id, value ', lower(type),
' from platform_value v, scenario s where type_id = ' , IDENTIFIER, 
' and s.value_id = v.identifier;')
    
FROM
    platform_type
import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { NgSelectModule } from '@ng-select/ng-select';
import { TranslateModule } from '@ngx-translate/core';
import { MDBBootstrapModule } from 'angular-bootstrap-md';
import { EformSharedTagsModule } from 'src/app/common/modules/eform-shared-tags/eform-shared-tags.module';
import { EformSharedModule } from 'src/app/common/modules/eform-shared/eform-shared.module';
import {
  WorkflowCaseDeleteComponent,
  WorkflowCaseEditComponent,
  WorkflowCasesPageComponent,
  WorkflowSettingsComponent,
} from './components';
import { WorkflowPnLayoutComponent } from './layouts';
import { WorkflowPnCasesService, WorkflowPnSettingsService } from './services';
import { workflowStoreProviders } from './store/store-providers.config';
import { WorkflowPnRouting } from './workflow-pn.routing';
import { OwlDateTimeModule } from '@danielmoncada/angular-datetime-picker';
import {EformImportedModule} from 'src/app/common/modules/eform-imported/eform-imported.module';

@NgModule({
    imports: [
        CommonModule,
        TranslateModule,
        FormsModule,
        NgSelectModule,
        EformSharedModule,
        FontAwesomeModule,
        RouterModule,
        WorkflowPnRouting,
        ReactiveFormsModule,
        EformSharedTagsModule,
        MDBBootstrapModule,
        OwlDateTimeModule,
        EformImportedModule,
    ],
  declarations: [
    WorkflowPnLayoutComponent,
    WorkflowSettingsComponent,
    WorkflowCasesPageComponent,
    WorkflowCaseDeleteComponent,
    WorkflowCaseEditComponent,
  ],
  providers: [
    WorkflowPnSettingsService,
    WorkflowPnCasesService,
    ...workflowStoreProviders,
  ],
})
export class WorkflowPnModule {}
